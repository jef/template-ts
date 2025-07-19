import { describe, it, expect } from "vitest";
import { main } from "./index.js";

describe("main() tests", () => {
  it("should return Hello World", async () => {
    expect(await main()).toBe("Hello World");
  });
});
