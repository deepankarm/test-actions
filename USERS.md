<style>
  .tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
    white-space: pre-wrap
  }

  .tooltip .tooltiptext {
    visibility: hidden;
    width: 1200px;
    background-color: grey;
    color: #fff;
    border-radius: 6px;
    padding: 5px 0;
    
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
  }

  .tooltip:hover .tooltiptext {
    visibility: visible;
  }
</style>

<!-- Users table starts -->

<table>
  <thead>
    <tr>
      <th>User</th>
      <th>#Flows</th>
      <th>Flow</th>
      <th>CTime</th>
    </tr>
  </thead>
  <tbody><tr>
    <td rowspan="1"><center>deepankarm</center></td>
    <td rowspan="1"><center>78</center></td><td><center>none</center></td><td><center>none</center></td></tr><tr>
    <td rowspan="1"><center>auth0-unified-4b37bff0acaef08c</center></td>
    <td rowspan="1"><center>46</center></td><td><div class="tooltip"><center>jflow-4c7aec4551</center><span class="tooltiptext">jtype: Flow
with:
  protocol: http
  env:
    WANDB_START_METHOD: thread
    JINA_LOG_LEVEL: debug
executors:
  - name: dalle_mini
    uses: jinahub+docker://DalleMini</span></div></td>
            <td><div class="tooltip">2022-04-20 05:51:15.303000</div></td>
            </tr><tr>
    <td rowspan="2"><center>auth0-unified-96df2d58a476e16e</center></td>
    <td rowspan="2"><center>3</center></td><td><div class="tooltip"><center>jflow-6881f2848d</center><span class="tooltiptext">jtype: Flow
with:
  protocol: http 
executors:
  - name: mysimpletransformer
    uses: jinahub+docker://15wjynx3:d2b324b99f237ccf21f3315826edfab7
  - name: mysimpleindexer
    uses: jinahub+docker://2fgk3dwi:2960c473b206356529bac3fb0f3a623b
</span></div></td>
            <td><div class="tooltip">2022-04-14 15:05:12.073000</div></td>
            </tr><tr><td><div class="tooltip"><center>jflow-b62f3f4114</center><span class="tooltiptext">jtype: Flow
with:
executors:
  - name: mysimpletransformer
    uses: jinahub+docker://15wjynx3:d2b324b99f237ccf21f3315826edfab7
  - name: mysimpleindexer
    uses: jinahub+docker://2fgk3dwi:2960c473b206356529bac3fb0f3a623b
</span></div></td>
            <td><div class="tooltip">2022-04-14 16:43:09.058000</div></td>
            </tr></tbody>
</table>

<!-- Users table ends -->
