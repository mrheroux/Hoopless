<?php require 'vendor/autoload.php';
/**
 * This file is part of the Hoopless package.
 *
 * (c) Ouxsoft <contact@ouxsoft.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
?>

<html lang="en">
<head>
    <title>Heander and Footer</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="/assets/css/main.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/codemirror/codemirror.css"/>
    <script src="/assets/js/codemirror/codemirror.js"/>
    <script src="/assets/js/codemirror/xml.js"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/codemirror/dracula.css"/>
</head>
<body>
<partial name="HeaderDefault"/>
<partial name="Breadcrumb"/>

<main role="main" class="container">
    <code process="false">
        <example name="Head"></example>
        <h1>Header and Footer Example</h1>
        <example name="Footer"></example>

    </code>
</main>
<script>
    function qsa(sel) {
        return Array.apply(null, document.querySelectorAll(sel));
    }
    qsa(".codemirror-textarea").forEach(function (editorEl) {
        CodeMirror.fromTextArea(editorEl, {
            lineNumbers: true,
            styleActiveLine: true,
            matchBrackets: true,
            mode : "xml",
            htmlMode: true,
            theme: "dracula"
        });
    });
</script>
</body>
</html>