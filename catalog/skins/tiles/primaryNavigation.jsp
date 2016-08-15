<%--
 See the NOTICE file distributed with
 this work for additional information regarding copyright ownership.
 Esri Inc. licenses this file to You under the Apache License, Version 2.0
 (the "License"); you may not use this file except in compliance with
 the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="tiles" uri="http://struts.apache.org/tags-tiles"  %>

<h:form id="frmPrimaryNavigation">
	<h:commandLink
        id="mainHome" 
        action="catalog.main.home"
        value="#{gptMsg['catalog.main.home.menuCaption']}"
        styleClass="#{PageContext.tabStyleMap['catalog.main.home']}"/>
	
<%-- <h:commandLink
        id="contentAbout"
        action="catalog.content.about"
        value="#{gptMsg['catalog.content.about.menuCaption']}"
      	styleClass="#{PageContext.tabStyleMap['catalog.content.about']}"
        title="About the EDG" /> --%>

<h:commandLink 
        id="searchHome" 
        action="catalog.search.home" 
        value="#{gptMsg['catalog.search.home.menuCaption']}"
        styleClass="#{PageContext.tabStyleMap['catalog.search.home']}"/>                 

  <h:commandLink 
        id="browse"
        action="catalog.browse" 
        styleClass="#{PageContext.tabStyleMap['catalog.browse']}"
        value="#{gptMsg['catalog.browse.menuCaption']}"
        rendered="#{PageContext.tocsByKey['browseCatalog']}" />
 
  <h:commandLink
        id="data"
        action="catalog.data.home"
        value="#{gptMsg['catalog.data.home.menuCaption']}"
      	styleClass="#{PageContext.tabStyleMap['catalog.data']}"
        title="Data"/>
 
    <h:commandLink
        id="components"
        action="catalog.components.home"
        value="#{gptMsg['catalog.components.home.menuBar.menuCaption']}"
      	styleClass="#{PageContext.tabStyleMap['catalog.components']}"
        title="Reuse Components of the EDG"/>
 
  <h:commandLink
        id="resources"
        action="catalog.resources.home"
        value="#{gptMsg['catalog.resources.home.menuCaption']}"
      	styleClass="#{PageContext.tabStyleMap['catalog.resources']}"
        title="Resources"/>

  <h:commandLink 
        id="publicationManageMetadata"
        action="catalog.publication.manageMetadata" 
        styleClass="#{PageContext.tabStyleMap['catalog.publication']}"
        value="#{gptMsg['catalog.publication.manageMetadata.menuCaption']}"
        rendered="#{PageContext.roleMap['gptPublisher']}"
        actionListener="#{ManageMetadataController.processAction}" />
  
      <h:commandLink
        id="collection" 
        action="catalog.collection.home"
        value="#{gptMsg['catalog.collection.home.menuCaption']}"
        styleClass="#{PageContext.tabStyleMap['catalog.collection.home']}"
        rendered="#{PageContext.roleMap['gptPublisher']}"
        title="Compilation"/>
  
	<h:commandLink
        id="validationManageMetadata" 
        action="catalog.publication.validateMetadata"
        styleClass="#{PageContext.tabStyleMap['catalog.publication']}"
        value="#{gptMsg['catalog.publication.validateMetadata.menuCaption']}"
        rendered="#{PageContext.roleMap['gptRegisteredUser'] and not PageContext.roleMap['gptPublisher']}"/>

	<h:commandLink 
        id="extractDownload"
        action="catalog.download" 
        styleClass="#{PageContext.tabStyleMap['catalog.download']}"
        value="#{gptMsg['catalog.download.menuCaption']}"
        rendered="#{not empty PageContext.applicationConfiguration.downloadDataConfiguration.taskUrl}"/>

</h:form>