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
    </tr><tr>
  <td>BCC-09</td>
  <td>Use of Test Data</td>
  <td>
    Only approved test data is used during compliance testing. No production or
    real patient data is used in non-production environments.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>List of test identifiers used (e.g. NHI test IDs)</li>
      <li>Sample payloads showing test data</li>
      <li>Confirmation statement from vendor</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-10</td>
  <td>Terms of Use / Legal Compliance</td>
  <td>
    The application presents applicable terms of use and captures user
    acceptance where required. Use of the API complies with legal and policy
    requirements.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>Screenshot of terms presented in UI</li>
      <li>Evidence of acceptance capture (e.g. checkbox, audit record)</li>
      <li>Description of how acceptance is stored</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-11</td>
  <td>Security Controls</td>
  <td>
    The application implements appropriate security controls, including secure
    transport (HTTPS), protection of credentials, and prevention of
    unauthorised access. Sensitive data is handled appropriately.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>Architecture or design summary (security controls)</li>
      <li>Evidence of HTTPS usage</li>
      <li>Description of credential handling and access controls</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-12</td>
  <td>Data Validation</td>
  <td>
    The application validates key identifiers and required fields before
    sending requests to the API. This includes format validation (e.g.
    identifier structure), mandatory fields, and basic business rules.
    Invalid data should be prevented from being submitted or clearly flagged
    to the user.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>Screenshots or video showing validation in the UI (e.g. invalid identifier rejected)</li>
      <li>Sample request payloads (valid vs invalid)</li>
      <li>Logs showing rejected submissions</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-13</td>
  <td>Rate Limiting Behaviour</td>
  <td>
    The application detects and appropriately responds to API rate limiting
    (e.g. HTTP 429). It should implement backoff/retry strategies and avoid
    overwhelming the API.
  </td>
  <td></td>
  <td>
    <ul>
      <li>Logs showing handling of 429 responses</li>
      <li>Evidence of retry/backoff logic (e.g. increasing delay)</li>
      <li>Description of retry strategy (config or design excerpt)</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-14</td>
  <td>Logging &amp; Monitoring</td>
  <td>
    The application logs key events required for audit, troubleshooting, and
    monitoring. This includes request/response activity, errors, and user
    actions, while ensuring sensitive data is handled appropriately.
  </td>
  <td></td>
  <td>
    <ul>
      <li>Sample log extracts (sanitised if needed)</li>
      <li>Description of what is logged (e.g. request ID, user ID, timestamp)</li>
      <li>Evidence logs can be used to trace a transaction end-to-end</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-15</td>
  <td>Data Integrity</td>
  <td>
    Systems consuming Diagnostic Report information via the API must ensure
    that content cannot be edited by end users.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>Evidence to show Diagnostic Report content is displayed as view only</li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-16</td>
  <td>Data Integrity</td>
  <td>
    Systems consuming the API must ensure the integrity and accuracy of the
    information displayed to end users.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>
        Evidence to show data returned from the API for a Diagnostic Report
        is the data shown to end users
      </li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-17</td>
  <td>End User Notifications</td>
  <td>
    Where a draft report is returned then the rendered report document must
    clearly identify the report as being in a draft state.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>
        Evidence to show that when a draft report is opened it is clear for
        users they are looking at a draft, e.g. a draft watermark is applied
      </li>
    </ul>
  </td>
</tr>

<tr>
  <td>BCC-18</td>
  <td>End User Notifications</td>
  <td>
    Diagnostic reports returned must clearly display the status of the report.
  </td>
  <td>Mandatory</td>
  <td>
    <ul>
      <li>
        Evidence to show that when a report is displayed for selection by a
        user the report status is clearly defined
      </li>
    </ul>
  </td>
</tr>
    
    

    <!-- Continue BCC-09 through BCC-18 using the same pattern -->
  </tbody>
</table>