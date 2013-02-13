<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Ajax Select</title>
  <meta name="layout" content="main"/>
</head>

<body>
<div class="container-fluid">

  <form class="form-horizontal">
    <fieldset>
      <legend>JSON Update</legend>

      <div class="control-group">
        <label class="control-label" for="state">State</label>

        <div class="controls">
          <g:select
              name="state"
              from="${states.entrySet()}"
              optionKey="key"
              optionValue="value"
              noSelection="['-1': '-Select State-']"
              onchange="${remoteFunction(action: 'citiesByState.json',
                  onSuccess: 'populateCities(data)',
                  params: '\'stateAbbrv=\' + this.value')}"/>
        </div>
      </div>

      <div class="control-group">
        <label class="control-label" for="cities">Cities</label>

        <div class="controls">
          <select name="cities" id="cities" disabled></select>
        </div>
      </div>
    </fieldset>
  </form>

  <form class="form-horizontal">
    <fieldset>
      <legend>HTML Update</legend>

      <div class="control-group">
        <label class="control-label" for="state">State</label>

        <div class="controls">
          <g:select
              name="stateHTML"
              from="${states.entrySet()}"
              optionKey="key"
              optionValue="value"
              noSelection="['-1': '-Select State-']"
              onchange="${remoteFunction(action: 'citiesByState.html',
                  update: [success: 'citiesContainer'],
                  params: '\'stateAbbrv=\' + this.value')}"/>
        </div>
      </div>

      <div class="control-group">
        <label class="control-label" for="cities">Cities</label>

        <div class="controls" id="citiesContainer">
        </div>
      </div>
    </fieldset>
  </form>


</div>

</body>
</html>