import { GitDigitalAPI } from '@gitdigital/opencollective';

const api = new GitDigitalAPI({
  apiKey: process.env.OPENCOLLECTIVE_API_KEY
});

// Get budget
const budget = await api.getBudget();
console.log(budget);

// List expenses
const expenses = await api.getExpenses({ status: 'approved' });
