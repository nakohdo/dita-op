/**
 * Copyright (C) 2008 Claude Vedovini <http://vedovini.net/>.
 * 
 * This file is part of the DITA Open Platform <http://www.dita-op.org/>.
 * 
 * The DITA Open Platform is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 * 
 * The DITA Open Platform is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * The DITA Open Platform. If not, see <http://www.gnu.org/licenses/>.
 */
package org.dita_op.editor.internal.ui.editors.map.model;

import org.dita_op.editor.internal.ImageConstants;
import org.dita_op.editor.internal.ui.editors.map.pages.TopicheadDetails;
import org.eclipse.ui.forms.IDetailsPage;
import org.w3c.dom.Element;

public class TopicHeadDescriptor extends Descriptor {

	TopicHeadDescriptor() {
		super("topichead", ImageConstants.ICON_TOPICHEAD); //$NON-NLS-1$
	}

	@Override
	public String getText(Element elt) {
		String title = elt.getAttribute("navtitle"); //$NON-NLS-1$
		return (title != null) ? title : super.getText(elt);
	}

	@Override
	protected Descriptor[] getChildren() {
		return new Descriptor[] { Descriptor.TOPICREF, Descriptor.TOPICHEAD,
				Descriptor.TOPICGROUP, Descriptor.NAVREF, Descriptor.ANCHOR };
	}

	@Override
	public IDetailsPage getDetailsPage() {
		return new TopicheadDetails();
	}

}
