import { Answers, ListQuestion, Question } from "inquirer"

export function pickTemplate(
  templateList: { message: string; value: string }[]
): ListQuestion<Answers> {
  if (!templateList || !templateList.length) throw new Error("Template list is empty!");
  return {
    name: "contractTemplate",
    type: "list",
    choices: templateList,
    message: "Which contract template should we use?",
  };
}

export function name(
  subject: string,
  initial?: (answers: Answers) => string,
  questionText?: string
): Question<Answers> {
  const question: Question = {
    name: `${subject}Name`,
    type: "input",
    message: questionText || `What name should we use for ${subject}?`,
  };
  if (initial) question.default = initial;
  return question;
}

export function email(initial?: string, questionText?: string): Question<Answers> {
  const question: Question = {
    name: "email",
    type: "input",
    message: questionText || "What is your email?",
  };
  if (initial) question.default = initial;
  return question;
}

export function choice(subject: string, questionText: string): Question<Answers> {
  return {
    name: subject,
    type: "confirm",
    message: questionText,
  };
}

export function pickLanguage(): ListQuestion<Answers> {
  return {
    name: "contractLanguage",
    type: "list",
    choices: ["pink"],
    message: "Which contract language should we use?",
  };
}

export function password(initial?: string, questionText?: string): Question<Answers> {
  const question: Question = {
    name: "password",
    type: "input",
    message: questionText || "Account passphrase (leave empty if to save as plain text)",
  };
  if (initial) question.default = initial;
  return question;
}
