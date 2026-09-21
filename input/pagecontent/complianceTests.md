<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
  <thead>
    <tr>
      <th>Ref</th>
      <th>Test Category</th>
      <th>Expectation</th>
      <th>Mandatory?</th>
      <th>Evidence Required</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>BCC-01</td>
      <td>Authentication &amp; Credentials</td>
      <td>
        The application securely authenticates with the API using issued credentials
        (e.g. client ID, secret, tokens). Credentials must not be hardcoded or
        exposed, and all requests must be authenticated.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Screenshots/config showing secure credential storage (sanitised)</li>
          <li>Logs demonstrating successful authenticated calls</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-02</td>
      <td>User Identity Propagation</td>
      <td>
        Every API request includes a valid, unique identifier representing the end
        user (e.g. HPI, user ID). The identity must reflect the actual logged-in
        user, not a shared/system account.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Request samples showing user identifier</li>
          <li>Logs linking requests to specific users</li>
          <li>Description of how user identity is sourced</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-03</td>
      <td>User Context Switching</td>
      <td>
        The application correctly updates the user identity in API requests when
        different users access the system. No reuse of a previous user's context.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Test with at least two users</li>
          <li>Logs/screenshots showing different user IDs in requests</li>
          <li>Evidence of session/user switching</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-04</td>
      <td>Role-Based Access Control (RBAC)</td>
      <td>
        Access to API functionality and data is restricted based on user roles.
        Users can only perform actions and view data appropriate to their role.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Role definitions/configuration</li>
          <li>Test cases showing permitted vs restricted actions</li>
          <li>Screenshots/logs demonstrating enforcement</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-05</td>
      <td>Audit &amp; Traceability</td>
      <td>
        Each API interaction is traceable end-to-end using unique identifiers
        (e.g. correlation ID). The system must support auditing of who did what
        and when.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Request/response headers with correlation IDs</li>
          <li>Logs showing traceability across components</li>
          <li>Example of tracing a single transaction</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-06</td>
      <td>Error Handling (API Resilience)</td>
      <td>
        The application handles API errors gracefully (e.g. validation errors,
        timeouts, 4xx/5xx responses). Users receive meaningful messages, and the
        system avoids crashes or data corruption.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Screenshots showing user-facing error messages</li>
          <li>Logs capturing API errors</li>
          <li>Evidence of retry or fallback behaviour (if applicable)</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-07</td>
      <td>Input &amp; Output Handling</td>
      <td>
        The application correctly captures user input, constructs valid API
        requests, and accurately displays API responses. Data must not be
        truncated, misrepresented, or lost.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>UI screenshots showing input and output</li>
          <li>Sample request/response payloads</li>
          <li>Evidence of correct data mapping</li>
        </ul>
      </td>
    </tr>

    <tr>
      <td>BCC-08</td>
      <td>Test Execution Evidence</td>
      <td>
        The vendor provides a complete and structured set of test results covering
        all required scenarios. Evidence must be clear, reproducible, and
        time-stamped.
      </td>
      <td>Mandatory</td>
      <td>
        <ul>
          <li>Test report covering all scenarios</li>
          <li>Timestamps on all evidence</li>
          <li>Clear mapping between test cases and results</li>
        </ul>
      </td>
    </tr>

    <!-- Continue BCC-09 through BCC-18 using the same pattern -->
  </tbody>
</table>