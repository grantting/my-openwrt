const { Octokit } = require("@octokit/rest");
const octokit = new Octokit({ auth: process.env.GITHUB_TOKEN });

const owner = 'YOUR_GITHUB_USERNAME';
const repo = 'YOUR_REPOSITORY_NAME';
const workflow_id = 'ci.yml';  // 你的工作流文件名

async function deleteOldRuns() {
    try {
        const { data: runs } = await octokit.actions.listWorkflowRuns({
            owner,
            repo,
            workflow_id,
            per_page: 100, // 最大值为100
        });

        const runsToDelete = runs.workflow_runs
            .slice(5) // 保留最新的5个
            .map(run => run.id);

        for (const runId of runsToDelete) {
            await octokit.actions.deleteWorkflowRun({
                owner,
                repo,
                run_id: runId,
            });
            console.log(`Deleted workflow run ${runId}`);
        }
    } catch (error) {
        console.error(`Error deleting old workflow runs: ${error}`);
    }
}

deleteOldRuns();
