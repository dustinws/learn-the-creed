export enum CheckResult {
  Passed,
  Failed,
  StillWriting,
}

export function check(stanzas: string[], userInput: string): CheckResult {
  const expected = normalize(stanzas.join(' '));
  const actual = normalize(userInput);

  const expectedSoFar = expected.slice(0, actual.length);

  if (expected === actual) {
    return CheckResult.Passed;
  }
  if (expectedSoFar === actual) {
    return CheckResult.StillWriting;
  }
  return CheckResult.Failed;
}

export function toBackground(result: CheckResult) {
  switch (result) {
    case CheckResult.Passed:
      return 'bg-green-100';
    case CheckResult.Failed:
      return 'bg-red-100';
    case CheckResult.StillWriting:
      return 'bg-white';
    default:
      throw new Error();
  }
}

function normalize(text: string): string {
  return text
    .toLowerCase()
    .replace(/[^\w]/ig, '');
}
