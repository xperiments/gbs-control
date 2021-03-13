<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>GBS-Control</title>
    <link rel="manifest" href="${manifest}" />
    <style>
      ${styles}
    </style>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link rel="icon" type="image/png" href="${favicon}" />
    <link rel="apple-touch-icon" href="${icon1024}" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta
      name="viewport"
      content="viewport-fit=cover, user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1"
    />
  </head>
  <body tabindex="0" class="gbs-help-hide gbs-output-hide">
    <div class="gbs-container">
      <div class="gbs-menu">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0,0,284,99"
          class="gbs-menu__logo"
        >
          <path
            fill-rule="evenodd"
            clip-rule="evenodd"
            fill="#010101"
            d="M283.5 98H0V0h283.5v98z"
          />
          <path
            fill-rule="evenodd"
            clip-rule="evenodd"
            fill="#00C0FB"
            d="M270.1 75.1V60.2h-17v10.1c0 2.6-2.7 5-5.1 5h-20.5c-5 0-5.4-4.2-5.4-8.3V29.1c0-2.7 1.9-4.9 4.9-4.9h21c2.7 0 5.2 1.5 5.2 4.5v10.1h17V27.6c0-7.9-4.3-15.9-13-15.9h-35.8c-7.3 0-15.6 4.2-15.6 12.7v50.4c0 6.5 4.9 13.1 12.4 13.1h38.5c6.4-.1 13.4-5.9 13.4-12.8zM190.5 5.6H6.6v86.3h183.9V5.6z"
          />
          <g fill="#010101">
            <path
              d="M52.6 43.1h19.6c1.5 0 2.1.8 1.9 2.3l-5.2 29.7c-.2 1.2-1 2.3-2.5 3.2-5.9 3.1-12.9 4.6-21 4.6-8.8 0-15.5-2-20.3-6.1-4.8-4.1-7.2-10.2-7.2-18.5 0-2.8.3-5.9.8-9.3 3.9-22.4 16.4-33.6 37.6-33.6 3.9 0 7.5.4 10.9 1.3 3.4.9 6 1.9 7.9 3.2 1.1.9 1.4 1.8.8 2.9l-3.3 5.7c-.8 1.4-1.9 1.8-3.3 1.1-3.6-1.8-7.8-2.7-12.6-2.7-7.4 0-13.1 1.7-16.9 5.2-3.9 3.5-6.5 9.1-7.9 17-.4 2.6-.6 5.1-.6 7.4 0 5.1 1.4 8.9 4.1 11.3 2.7 2.4 7 3.6 12.6 3.6 3.9 0 7.3-.6 10.2-1.9L61 53.2H51c-1.5 0-2.2-.7-2-2.1l1-5.7c.3-1.5 1.2-2.3 2.6-2.3zM98.6 82H73.9c-1.7 0-2.3-.8-1.9-2.3L82.7 19c.2-1.5 1.1-2.2 2.6-2.2H108c15.2 0 22.8 4.7 22.8 14.2 0 3.8-1 7.2-3 10.2-2 3-4.9 5.1-8.6 6.4 2.5.7 4.6 2.1 6.2 4.2 1.6 2.1 2.4 4.8 2.4 8.2 0 7.7-2.7 13.3-8 16.8-5.3 3.4-12.4 5.2-21.2 5.2zM86.1 71.6H99c10.6 0 15.9-3.8 15.9-11.5 0-2.4-.9-4.1-2.8-5.2-1.9-1-5-1.6-9.4-1.6H89.4l-3.3 18.3zm5-28H104c9.3 0 13.9-3.5 13.9-10.5 0-2.2-.9-3.7-2.6-4.7-1.7-1-4.6-1.4-8.6-1.4H94l-2.9 16.6z"
            />
            <path
              d="M173.2 61.3c0 7.1-2.6 12.5-7.8 16.1-5.2 3.6-11.8 5.4-19.8 5.4-9.1 0-15.9-1.2-20.3-3.6-1.2-.7-1.5-1.6-.9-2.8l3.2-5.9c.7-1.5 1.8-1.9 3.1-1.4 4.1 1.9 8.8 2.8 14.3 2.8 2.3 0 4.6-.2 6.7-.7 2.1-.5 4-1.4 5.8-2.8s2.6-3.2 2.6-5.5c0-1.1-.3-2-.8-2.9-.5-.9-1.4-1.7-2.7-2.5-1.3-.8-2.4-1.4-3.4-1.9s-2.5-1.2-4.5-2.1c-2.3-1.1-4.3-2-6-2.8-1.7-.8-3.4-1.8-5-3.2-1.7-1.4-2.9-3-3.8-4.8-.8-1.9-1.3-4-1.3-6.3 0-7 2.4-12.2 7.2-15.6 4.8-3.4 11.2-5.1 19.1-5.1 7.7 0 13.6 1.1 17.8 3.2 1.2.7 1.5 1.6.9 2.8l-3.2 5.7c-.7 1.4-1.8 1.9-3.2 1.3-3.3-1.4-7.4-2-12.4-2-8.8 0-13.2 2.7-13.2 8.2 0 1.3.5 2.5 1.5 3.5s2 1.8 3 2.3 2.7 1.3 5.2 2.5c.5.3.9.4 1.2.6 2.6 1.3 4.7 2.3 6.3 3.1 1.6.8 3.3 1.9 5.1 3.3 1.8 1.4 3.1 3 4 4.9.9 1.7 1.3 3.8 1.3 6.2z"
            />
          </g>
        </svg>
        <button
          gbs-section="presets"
          class="gbs-button gbs-button__menu gbs-icon"
          active
        >
          input
        </button>
        <button
          gbs-section="control"
          class="gbs-button gbs-button__menu gbs-icon"
        >
          control_camera
        </button>
        <button
          gbs-section="filters"
          class="gbs-button gbs-button__menu gbs-icon"
        >
          blur_on
        </button>
        <button
          gbs-section="preferences"
          class="gbs-button gbs-button__menu gbs-icon"
        >
          tune
        </button>
        <button
          gbs-section="developer"
          class="gbs-button gbs-button__menu gbs-icon"
          hidden
        >
          developer_mode
        </button>
        <button
          gbs-section="system"
          class="gbs-button gbs-button__menu gbs-icon"
        >
          bolt
        </button>
      </div>
      <div class="gbs-scroll">
        <section name="presets">
          <fieldset class="gbs-fieldset" style="padding: 8px 2px">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">aspect_ratio</div>
              <div gbs-i18n="presets.resolution.title">Resolution</div>
            </legend>
            <!-- prettier-ignore -->
            <ul class="gbs-help">
              <li gbs-i18n="presets.resolution.help.0">Choose an output resolution from these presets.</li>
              <li gbs-i18n="presets.resolution.help.1">Your selection will also be used for startup. 1280x960 is recommended for NTSC sources, 1280x1024 for PAL.
              </li>
              <li gbs-i18n="presets.resolution.help.2">Use the "Matched Presets" option to switch between the two automatically (Preferences tab)
              </li>
            </ul>
            <div class="gbs-resolution">
              <button
                class="gbs-button gbs-button__resolution"
                gbs-message="s"
                gbs-message-type="user"
                gbs-click="normal"
                gbs-element-ref="button1920x1080"
                gbs-role="preset"
                gbs-i18n="presets.resolution.1920x1080"
              >
                1920 <span>x1080</span>
              </button>
              <button
                class="gbs-button gbs-button__resolution"
                gbs-message="p"
                gbs-message-type="user"
                gbs-click="normal"
                gbs-element-ref="button1280x1024"
                gbs-role="preset"
                gbs-i18n="presets.resolution.1280x1024"
              >
                1280 <span>x1024</span>
              </button>
              <button
                class="gbs-button gbs-button__resolution"
                gbs-message="f"
                gbs-message-type="user"
                gbs-click="normal"
                gbs-element-ref="button1280x960"
                gbs-role="preset"
                gbs-i18n="presets.resolution.1280x960"
              >
                1280 <span>x960</span>
              </button>
              <button
                class="gbs-button gbs-button__resolution"
                gbs-message="g"
                gbs-message-type="user"
                gbs-click="normal"
                gbs-element-ref="button1280x720"
                gbs-role="preset"
                gbs-i18n="presets.resolution.1280x720"
              >
                1280 <span>x720</span>
              </button>
              <button
                class="gbs-button gbs-button__resolution"
                gbs-message="h"
                gbs-message-type="user"
                gbs-click="normal"
                gbs-element-ref="button720x480"
                gbs-role="preset"
                gbs-i18n="presets.resolution.480p576p"
              >
                480p 576p
              </button>
              <button
                gbs-message="L"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button gbs-button__resolution gbs-button__resolution--center gbs-button__secondary"
                gbs-element-ref="button15kHzScaleDown"
                gbs-role="preset"
              >
                <div class="gbs-icon">tv</div>
                <div gbs-i18n="presets.resolution.15KHz">15KHz</div>
              </button>
              <button
                gbs-message="K"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__resolution gbs-button__resolution--center gbs-button__secondary"
                gbs-element-ref="buttonSourcePassThrough"
                gbs-role="preset"
              >
                <div class="gbs-icon">swap_calls</div>
                <div
                  class="gbs-button__resolution--pass-through"
                  gbs-i18n="presets.resolution.passThrough"
                >
                  Pass Through
                </div>
              </button>
            </div>
          </fieldset>
          <fieldset class="gbs-fieldset presets">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">input</div>
              <div gbs-i18n="presets.presets.title">Presets</div>
            </legend>
            <!-- prettier-ignore -->
            <ul class="gbs-help">
              <li gbs-i18n="presets.presets.help.0">If you want to save your customizations, first select a slot for your new preset, then save to or load from that slot.</li>
              <li gbs-i18n="presets.presets.help.1">Selecting a slot also makes it the new startup preset.</li>
            </ul>
            <div class="gbs-presets" gbs-slot-html></div>
            <div class="gbs-flex">
              <button
                class="gbs-button gbs-button__control-action"
                active
                gbs-element-ref="buttonLoadCustomPreset"
                gbs-role="preset"
                onclick="loadPreset()"
              >
                <div class="gbs-icon">play_arrow</div>
                <div gbs-i18n="presets.presets.loadPreset">load preset</div>
              </button>
              <button
                class="gbs-button gbs-button__control-action gbs-button__secondary"
                onclick="savePreset()"
                active
              >
                <div class="gbs-icon">fiber_manual_record</div>
                <div gbs-i18n="presets.presets.savePreset">save preset</div>
              </button>
            </div>
          </fieldset>
        </section>

        <section name="control" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">wb_sunny</div>
              <div gbs-i18n="control.adcGain">ADC Gain (brightness)</div>
            </legend>
            <!-- prettier-ignore -->
            <ul class="gbs-help">
              <li gbs-i18n="control.adcGain.help.0">Gain +/- adjusts the gain for the currently loaded preset.</li>
            </ul>
            <div class="gbs-flex gbs-margin__bottom--16">
              <button
                gbs-message="o"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control"
              >
                <div class="gbs-icon">remove_circle_outline</div>
                <div gbs-i18n="control.adcGain.-">gain</div>
              </button>
              <button
                gbs-message="n"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control"
              >
                <div class="gbs-icon">add_circle_outline</div>
                <div gbs-i18n="control.adcGain.+">gain</div>
              </button>
              <button
                gbs-message="T"
                gbs-message-type="action"
                gbs-click="normal"
                gbs-toggle="adcAutoGain"
                class="gbs-button gbs-button__control gbs-button__secondary"
              >
                <div class="gbs-icon">brightness_auto</div>
                <div gbs-i18n="control.autoGain">Auto Gain</div>
              </button>
            </div>
          </fieldset>
          <fieldset class="gbs-fieldset gbs-controls">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">control_camera</div>
              <div gbs-i18n="control.picture">Picture Control</div>
            </legend>
            <div class="gbs-flex">
              <button
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
                gbs-control-key="left"
              >
                keyboard_arrow_left
              </button>
              <button
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
                gbs-control-key="up"
              >
                keyboard_arrow_up
              </button>
              <button
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
                gbs-control-key="right"
              >
                keyboard_arrow_right
              </button>
            </div>
            <div class="gbs-flex gbs-margin__bottom--16">
              <button class="gbs-button gbs-button__control gbs-icon" disabled>
                south_west
              </button>
              <button
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
                gbs-control-key="down"
              >
                keyboard_arrow_down
              </button>
              <button class="gbs-button gbs-button__control gbs-icon" disabled>
                south_east
              </button>
            </div>
            <div class="gbs-flex">
              <button
                class="gbs-button gbs-button__control"
                gbs-control-target="move"
                active
              >
                <div class="gbs-icon">open_with</div>
                <div gbs-i18n="control.picture.move">move</div>
              </button>
              <button
                class="gbs-button gbs-button__control"
                gbs-control-target="scale"
              >
                <div class="gbs-icon">zoom_out_map</div>
                <div gbs-i18n="control.picture.scale">scale</div>
              </button>
              <button
                class="gbs-button gbs-button__control"
                gbs-control-target="borders"
              >
                <div class="gbs-icon">crop_free</div>
                <div gbs-i18n="control.picture.borders">borders</div>
              </button>
            </div>
          </fieldset>
          <fieldset class="gbs-fieldset gbs-controls__desktop">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">control_camera</div>
              <div gbs-i18n="control.picture">Picture Control</div>
            </legend>
            <div class="gbs-flex">
              <button
                gbs-message="7"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_left
              </button>
              <button
                gbs-message="*"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_up
              </button>
              <button
                gbs-message="6"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_right
              </button>
            </div>
            <div class="gbs-flex gbs-margin__bottom--16">
              <button class="gbs-button gbs-button__control" active>
                <div class="gbs-icon">open_with</div>
                <div gbs-i18n="control.picture.move">move</div>
              </button>
              <button
                gbs-message="/"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_down
              </button>
              <button class="gbs-button gbs-button__control gbs-icon" disabled>
                south_east
              </button>
            </div>

            <div class="gbs-flex">
              <button
                gbs-message="h"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_left
              </button>
              <button
                gbs-message="4"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_up
              </button>
              <button
                gbs-message="z"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_right
              </button>
            </div>

            <div class="gbs-flex gbs-margin__bottom--16">
              <button class="gbs-button gbs-button__control" active>
                <div class="gbs-icon">zoom_out_map</div>
                <div gbs-i18n="control.picture.scale">scale</div>
              </button>
              <button
                gbs-message="5"
                gbs-message-type="action"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_down
              </button>
              <button class="gbs-button gbs-button__control gbs-icon" disabled>
                south_east
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="B"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_left
              </button>
              <button
                gbs-message="C"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_up
              </button>
              <button
                gbs-message="A"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_right
              </button>
            </div>

            <div class="gbs-flex gbs-margin__bottom--16">
              <button
                class="gbs-button gbs-button__control"
                gbs-control-target="borders"
                active
              >
                <div class="gbs-icon">crop_free</div>
                <div gbs-i18n="control.picture.borders">borders</div>
              </button>
              <button
                gbs-message="D"
                gbs-message-type="user"
                gbs-click="repeat"
                class="gbs-button gbs-button__control gbs-icon gbs-button__secondary"
              >
                keyboard_arrow_down
              </button>
              <button class="gbs-button gbs-button__control gbs-icon" disabled>
                south_east
              </button>
            </div>
          </fieldset>
        </section>

        <section name="filters" hidden>
          <fieldset class="gbs-fieldset filters">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">blur_on</div>
              <div gbs-i18n="filters.title">Filters</div>
            </legend>
            <ul class="gbs-help">
              <!-- prettier-ignore -->
              <li gbs-i18n="filters.help.0">Scanlines only work with 240p sources. They look best with the Line Filter enabled.</li>
              <!-- prettier-ignore -->
              <li gbs-i18n="filters.help.1">Peaking and Step Response are subtle sharpening filters and recommended.</li>
            </ul>
            <div class="gbs-margin__bottom--16">
              <div class="gbs-flex gbs-margin__bottom--16">
                <button
                  gbs-message="7"
                  gbs-message-type="user"
                  gbs-click="normal"
                  gbs-toggle="scanlines"
                  class="gbs-button gbs-button__control gbs-button__secondary"
                >
                  <div class="gbs-icon">gradient</div>
                  <div gbs-i18n="filters.scanlines">scanlines</div>
                </button>
                <button
                  gbs-message="K"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-button gbs-button__control"
                >
                  <div class="gbs-icon">gradientbolt</div>
                  <div gbs-i18n="filters.scanlines.intensity">intensity</div>
                </button>
                <button
                  gbs-message="m"
                  gbs-message-type="user"
                  gbs-click="normal"
                  gbs-toggle="vdsLineFilter"
                  class="gbs-button gbs-button__control gbs-button__secondary"
                >
                  <div class="gbs-icon">power_input</div>
                  <div gbs-i18n="filters.lineFilter">line filter</div>
                </button>
              </div>
              <div class="gbs-flex">
                <button
                  gbs-message="f"
                  gbs-message-type="action"
                  gbs-click="normal"
                  gbs-toggle="peaking"
                  class="gbs-button gbs-button__control gbs-button__secondary"
                >
                  <div class="gbs-icon">blur_linear</div>
                  <div gbs-i18n="filters.peaking">peaking</div>
                </button>
                <button
                  gbs-message="V"
                  gbs-message-type="action"
                  gbs-click="normal"
                  gbs-toggle="step"
                  class="gbs-button gbs-button__control gbs-button__secondary"
                >
                  <div class="gbs-icon">grain</div>
                  <div gbs-i18n="filters.stepResponse">step response</div>
                </button>
              </div>
            </div>
          </fieldset>
        </section>

        <section name="preferences" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">tune</div>
              <div gbs-i18n="preferences.title">Settings</div>
            </legend>
            <table class="gbs-preferences">
              <tr>
                <td colspan="2" class="gbs-preferences__child">
                  <span gbs-i18n="preferences.language"
                    >Language</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.customSlotFilters.help.0">When enabled, saved slots recover it owns filter preferences.</li>
                    <li gbs-i18n="preferences.customSlotFilters.help.1">When disabled, saved slots maintain current filter settings.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <td colspan="2"><select class="gbs-button" gbs-locale></select></td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.matchedPresets"
                    >Matched Presets</span
                  >
                  <ul class="gbs-help">
                    <!-- prettier-ignore -->
                    <li gbs-i18n="preferences.matchedPresets.help.0">If enabled, default to 1280x960 for NTSC 60 and 1280x1024 for PAL 50 (does not apply for 720p / 1080p presets).</li>
                  </ul>
                </td>
                <td
                  gbs-message="Z"
                  gbs-message-type="action"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="matched"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.fullHeight">Full Height</span>
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.fullHeight.help.0">Some presets default to not using the entire vertical output resolution, leaving some lines black.</li>
                    <li gbs-i18n="preferences.fullHeight.help.1">With Full Height enabled, these presets will instead scale to fill more of the screen height.</li>
                    <li gbs-i18n="preferences.fullHeight.help.2">(This currently only affects 1920 x 1080)</li>
                  </ul>
                </td>
                <td
                  gbs-message="v"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="fullHeight"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.lowResUpscaling"
                    >Low Res: Use Upscaling</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.lowResUpscaling.help.0">Low Resolution VGA input: Pass-through or Upscale</li>
                    <li gbs-i18n="preferences.lowResUpscaling.help.1">Low resolution sources can be either passed on directly or get upscaled.</li>
                    <li gbs-i18n="preferences.lowResUpscaling.help.2">Upscaling may have some border / scaling issues, but is more compatible with displays.</li>
                    <li gbs-i18n="preferences.lowResUpscaling.help.3">Also, refresh rates other than 60Hz are not well supported yet.</li>
                    <li gbs-i18n="preferences.lowResUpscaling.help.4">"Low resolution" is currently set at below or equal to 640x480 (525 active lines).</li>
                  </ul>
                </td>
                <td
                  gbs-message="x"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="preferScalingRgbhv"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.rgbhvComponentToggle"
                    >RGBHV/Component Toggle</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.rgbhvComponentToggle.help.0">The default output mode is RGBHV, suitable for use with VGA cables or HDMI converters.</li>
                    <li gbs-i18n="preferences.rgbhvComponentToggle.help.1">An experimental YPbPr mode can also be selected. Compatibility is still spotty.</li>
                  </ul>
                </td>
                <td
                  gbs-message="L"
                  gbs-message-type="action"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="wantOutputComponent"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.outputRateForcePal60"
                    >Output Frame Rate: Force PAL 50Hz to 60Hz</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.outputRateForcePal60.help.0">If your TV does not support 50Hz sources (displaying unknown format, no matter the preset), try this option.
                    </li>
                    <li gbs-i18n="preferences.outputRateForcePal60.help.1">The frame rate will not be as smooth. Reboot required.</li>
                  </ul>
                </td>
                <td
                  gbs-message="0"
                  gbs-message-type="action"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="palForce60"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td>
                  <span gbs-i18n="preferences.adcCalibration"
                    >ADC calibration</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.adcCalibration.help.0">Gbscontrol calibrates the ADC offsets on startup.</li>
                    <li gbs-i18n="preferences.adcCalibration.help.1">In case of color shift problems, try disabling this function.</li>
                  </ul>
                </td>
                <td
                  gbs-message="w"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="enableCalibrationADC"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td colspan="2" class="gbs-preferences__child">
                  <span gbs-i18n="preferences.activeFrameTimeLock"
                    >Active FrameTime Lock</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.activeFrameTimeLock.help.0">This option keeps the input and output timings aligned, fixing the horizontal tear line that can appear sometimes.</li>
                    <li gbs-i18n="preferences.activeFrameTimeLock.help.0">Two methods are available. Try switching methods if your display goes blank.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <td class="gbs-padding__left-16">FrameTime Lock</td>
                <td
                  class="gbs-icon"
                  gbs-message="5"
                  gbs-message-type="user"
                  gbs-click="normal"
                  gbs-toggle-switch="frameTimeLock"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td
                  class="gbs-padding__left-16"
                  gbs-i18n="preferences.switchLockMethod"
                >
                  Switch Lock Method
                </td>
                <td
                  class="gbs-icon"
                  gbs-message="i"
                  gbs-message-type="user"
                  gbs-click="normal"
                  style="cursor: pointer"
                >
                  swap_horiz
                </td>
              </tr>
              <tr>
                <td colspan="2" class="gbs-preferences__child">
                  <span gbs-i18n="preferences.deinterlaceMethod"
                    >Deinterlace Method</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.deinterlaceMethod.help.0">Gbscontrol detects interlaced content and automatically toggles deinterlacing.</li>
                    <li gbs-i18n="preferences.deinterlaceMethod.help.1">Bob Method: essentially no deinterlacing, no added lag but flickers</li>
                    <li gbs-i18n="preferences.deinterlaceMethod.help.2">Motion Adaptive: removes flicker, adds 1 frame of lag and shows some artefacts in moving details</li>
                    <li gbs-i18n="preferences.deinterlaceMethod.help.3">If possible, configure the source for progressive output. Otherwise, using Motion Adaptive is recommended.</li>
                  </ul>
                </td>
              </tr>
              <tr>
                <td
                  class="gbs-padding__left-16"
                  gbs-i18n="preferences.deinterlaceMethod.motionAdaptive"
                >
                  Motion Adaptive
                </td>
                <td
                  gbs-message="r"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="bob"
                >
                  toggle_off
                </td>
              </tr>
              <tr>
                <td
                  class="gbs-padding__left-16"
                  gbs-i18n="preferences.deinterlaceMethod.bob"
                >
                  Bob
                </td>
                <td
                  gbs-message="q"
                  gbs-message-type="user"
                  gbs-click="normal"
                  class="gbs-icon"
                  gbs-toggle-switch="motionAdaptive"
                >
                  toggle_off
                </td>
              </tr>
              <tr gbs-dev-switch>
                <td>
                  <span gbs-i18n="preferences.developerMode"
                    >Developer Mode</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.developerMode.help.0">Enables the developer menu which contains various debugging tools</li>
                  </ul>
                </td>
                <td class="gbs-icon">toggle_off</td>
              </tr>
              <tr gbs-slot-custom-filters>
                <td>
                  <span gbs-i18n="preferences.customSlotFilters"
                    >Custom Slot Filters</span
                  >
                  <!-- prettier-ignore -->
                  <ul class="gbs-help">
                    <li gbs-i18n="preferences.customSlotFilters.help.0">When enabled, saved slots recover it owns filter preferences.</li>
                    <li gbs-i18n="preferences.customSlotFilters.help.1">When disabled, saved slots maintain current filter settings.</li>
                  </ul>
                </td>
                <td class="gbs-icon">toggle_off</td>
              </tr>
            </table>
          </fieldset>
        </section>

        <section name="developer" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">input</div>
              <div gbs-i18n="developer.title">Developer</div>
            </legend>
            <div class="gbs-flex gbs-margin__bottom--16">
              <button class="gbs-button" gbs-output-toggle>
                <div class="gbs-icon">code</div>
                <div gbs-i18n="developer.toggleConsole">Toggle Console</div>
              </button>
            </div>
            <div class="gbs-flex gbs-margin__bottom--16">
              <button
                gbs-message="-"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">keyboard_arrow_left</div>
                <div gbs-i18n="developer.memoryLeft">MEM Left</div>
              </button>
              <button
                gbs-message="+"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">keyboard_arrow_right</div>
                <div gbs-i18n="developer.memoryRight">MEM Right</div>
              </button>
              <button
                gbs-message="1"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">keyboard_arrow_left</div>
                <div gbs-i18n="developer.hsLeft">HS Left</div>
              </button>
              <button
                gbs-message="0"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">keyboard_arrow_right</div>
                <div gbs-i18n="developer.hsRight">HS Right</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="e"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">list</div>
                <div gbs-i18n="developer.listOptions">List Options</div>
              </button>
              <button
                gbs-message="i"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">info</div>
                <div gbs-i18n="developer.printInfo">Print Info</div>
              </button>
              <button
                gbs-message=","
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">alarm</div>
                <div gbs-i18n="developer.getVideoTimings">
                  Get Video Timings
                </div>
              </button>
            </div>

            <div class="gbs-flex">
              <button
                gbs-message="F"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button gbs-margin__bottom--16"
              >
                <div class="gbs-icon">add_a_photo</div>
                <div gbs-i18n="developer.freezeCapture">Freeze Capture</div>
              </button>
            </div>

            <div class="gbs-flex">
              <button
                gbs-message="F"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">wb_sunny</div>
                <div gbs-i18n="developer.adcFilter">ADC Filter</div>
              </button>
              <button
                gbs-message="l"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">memory</div>
                <div gbs-i18n="developer.cycleSdram">Cycle SDRAM</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="D"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">bug_report</div>
                <div gbs-i18n="developer.debugView">Debug View</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="a"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">add_circle_outline</div>
                <div gbs-i18n="developer.htotal++">HTotal++</div>
              </button>
              <button
                gbs-message="A"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">remove_circle_outline</div>
                <div gbs-i18n="developer.htotal--">HTotal--</div>
              </button>
              <button
                gbs-message="."
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">sync_problem</div>
                <div gbs-i18n="developer.resyncHtotal">Resync HTotal</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="n"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">calculate</div>
                <div gbs-i18n="developer.pllDivider++">PLL divider++</div>
              </button>
              <button
                gbs-message="8"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">invert_colors</div>
                <div gbs-i18n="developer.invertSync">Invert Sync</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="m"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">devices_other</div>
                <div gbs-i18n="developer.syncWatcher">SyncWatcher</div>
              </button>

              <button
                gbs-message="l"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">settings_backup_restore</div>
                <div gbs-i18n="developer.syncProcessor">SyncProcessor</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="o"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">insights</div>
                <div gbs-i18n="developer.oversampling">Oversampling</div>
              </button>
              <button
                gbs-message="S"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">settings_input_hdmi</div>
                <div gbs-i18n="developer.50or60Hdmi">60/50Hz HDMI</div>
              </button>

              <button
                gbs-message="E"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">bug_report</div>
                <div gbs-i18n="developer.ifAutoOffset">IF Auto Offset</div>
              </button>
            </div>
            <div class="gbs-flex">
              <button
                gbs-message="z"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button"
              >
                <div class="gbs-icon">format_align_justify</div>
                <div gbs-i18n="developer.sogLevel--">SOG Level--</div>
              </button>

              <button
                gbs-message="q"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__secondary"
              >
                <div class="gbs-icon">model_training</div>
                <div gbs-i18n="developer.resetChip">Reset Chip</div>
              </button>
            </div>
          </fieldset>
        </section>

        <section name="system" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">bolt</div>
              <div gbs-i18n="system.title">System</div>
            </legend>
            <div class="gbs-flex">
              <button
                gbs-message="c"
                gbs-message-type="action"
                gbs-click="normal"
                class="gbs-button gbs-button__control"
              >
                <div class="gbs-icon">system_update_alt</div>
                <div gbs-i18n="system.enableOta">Enable OTA</div>
              </button>
              <button
                gbs-message="a"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button gbs-button__control"
              >
                <div class="gbs-icon">settings_backup_restore</div>
                <div gbs-i18n="system.restart">Restart</div>
              </button>
              <button
                gbs-message="1"
                gbs-message-type="user"
                gbs-click="normal"
                class="gbs-button gbs-button__control gbs-button__secondary"
              >
                <div class="gbs-icon">settings_backup_restore offline_bolt</div>
                <div>Reset Defaults</div>
              </button>
            </div>
          </fieldset>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend gbs-fieldset__legend--help">
              <div class="gbs-icon">sd_card</div>
              <div gbs-i18n="system.backup.title">
                Backup [intended for same device]
              </div>
            </legend>
            <!-- prettier-ignore -->
            <ul class="gbs-help">
              <li gbs-i18n="system.backup.help.0">Backup / Restore of configuration files</li>
              <li gbs-i18n="system.backup.help.1">Backup is valid for current device only</li>
              <!-- <li>Backup is valid between devices with the same hardware revision</li> -->
            </ul>
            <div class="gbs-flex">
              <button
                class="gbs-button gbs-button__control gbs-button__secondary gbs-backup-button"
              >
                <div class="gbs-icon">cloud_download</div>
                <div
                  gbs-progress
                  gbs-progress-backup
                  gbs-i18n="system.backup.backup"
                >
                  Backup
                </div>
              </button>
              <button
                class="gbs-button gbs-button__control gbs-button__secondary"
              >
                <div class="gbs-icon">cloud_upload</div>
                <input type="file" class="gbs-backup-input" accept=".bin" />
                <div
                  gbs-progress
                  gbs-progress-restore
                  gbs-i18n="system.backup.restore"
                >
                  Restore
                </div>
              </button>
            </div>
          </fieldset>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">wifi</div>
              <div gbs-i18n="system.wifi.title">Wi-Fi</div>
            </legend>

            <div class="gbs-flex gbs-margin__bottom--16">
              <button class="gbs-button gbs-button__control" gbs-wifi-ap>
                <div class="gbs-icon">location_on</div>
                <div gbs-i18n="system.wifi.accessPoint">Access Point</div>
              </button>
              <button class="gbs-button gbs-button__control" gbs-wifi-station>
                <div class="gbs-icon">radio</div>
                <div gbs-wifi-station-ssid gbs-i18n="system.wifi.station">
                  Station
                </div>
              </button>
            </div>
            <fieldset class="gbs-fieldset" gbs-wifi-list hidden>
              <legend class="gbs-fieldset__legend">
                <div class="gbs-icon">router</div>
                <div gbs-i18n="system.wifi.selectSsid">Select SSID</div>
              </legend>
              <table class="gbs-wifi__list"></table>
            </fieldset>
            <fieldset class="gbs-fieldset gsb-wifi__connect" hidden>
              <legend class="gbs-fieldset__legend">
                <div class="gbs-icon">login</div>
                <div gbs-i18n="system.wifi.connectToSsid">Connect to SSID</div>
              </legend>
              <div class="gbs-flex">
                <input
                  class="gbs-button gbs-wifi__input"
                  placeholder="SSID"
                  type="text"
                  readonly
                  gbs-input="ssid"
                />
              </div>
              <div class="gbs-flex">
                <input
                  class="gbs-button gbs-wifi__input"
                  placeholder="password"
                  type="password"
                  gbs-input="password"
                />
              </div>
              <div class="gbs-flex">
                <button
                  gbs-wifi-connect-button
                  class="gbs-button gbs-button__control gbs-button__secondary"
                >
                  <div class="gbs-icon">network_check</div>
                  <div gbs-i18n="system.wifi.connect">Connect</div>
                </button>
              </div>
            </fieldset>
          </fieldset>
        </section>
        <section name="prompt" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">keyboard</div>
              <div gbs-prompt-content gbs-i18n="prompt.title">Prompt</div>
            </legend>
            <div class="gbs-flex gbs-margin__bottom--16">
              <input
                class="gbs-button"
                type="text"
                gbs-input="prompt-input"
                maxlength="25"
              />
            </div>
            <div class="gbs-flex">
              <button gbs-prompt-cancel class="gbs-button gbs-button__control">
                <div class="gbs-icon">close</div>
                <div gbs-i18n="prompt.cancel">CANCEL</div>
              </button>
              <button
                gbs-prompt-ok
                class="gbs-button gbs-button__control gbs-button__secondary"
              >
                <div class="gbs-icon">done</div>
                <div gbs-i18n="prompt.ok">OK</div>
              </button>
            </div>
          </fieldset>
        </section>
        <section name="alert" hidden>
          <fieldset class="gbs-fieldset">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">warning</div>
              <div gbs-i18n="alert.title">ALERT</div>
            </legend>
            <div
              class="gbs-flex gbs-padding__hor-16 gbs-modal__message"
              gbs-alert-content
            ></div>
            <div class="gbs-flex">
              <button class="gbs-button gbs-button__control" disabled></button>
              <button
                gbs-alert-ok
                class="gbs-button gbs-button__control gbs-button__secondary"
              >
                <div class="gbs-icon">done</div>
                <div gbs-i18n="alert.ok">OK</div>
              </button>
            </div>
          </fieldset>
        </section>
        <div class="gbs-output">
          <fieldset class="gbs-fieldset gbs-fieldset-output">
            <legend class="gbs-fieldset__legend">
              <div class="gbs-icon">code</div>
              <div gbs-i18n="output.title">Output</div>
            </legend>
            <div class="gbs-flex gbs-margin__bottom--16" gbs-output-clear>
              <button class="gbs-button gbs-icon">delete_outline</button>
            </div>
            <div class="gbs-flex">
              <textarea
                id="outputTextArea"
                class="gbs-output__textarea"
              ></textarea>
            </div>
          </fieldset>
        </div>
      </div>
      <div class="gbs-loader"><img /></div>
    </div>
    <div class="gbs-wifi-warning" id="websocketWarning">
      <div class="gbs-icon blink_me">signal_wifi_off</div>
    </div>
    <script>
      ${js}
    </script>
  </body>
</html>
