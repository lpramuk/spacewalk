/**
 * Copyright (c) 2009--2010 Red Hat, Inc.
 *
 * This software is licensed to you under the GNU General Public License,
 * version 2 (GPLv2). There is NO WARRANTY for this software, express or
 * implied, including the implied warranties of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
 * along with this software; if not, see
 * http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
 *
 * Red Hat trademarks are not licensed under GPLv2. No permission is
 * granted to use or replicate Red Hat trademarks that are incorporated
 * in this software or its documentation.
 */
package com.redhat.rhn.frontend.action.monitoring.notification;

import com.redhat.rhn.frontend.struts.RequestContext;
import com.redhat.rhn.manager.monitoring.ModifyFilterCommand;

/**
 * FilterEditAction - renders and saves a Filter
 * @version $Rev: 53528 $
 */
public class FilterEditAction extends BaseFilterEditAction {

    /**
     * {@inheritDoc}
     */
    public String getSuccessKey() {
        return "filterEdit.success";
    }

    protected ModifyFilterCommand makeModifyFilterCommand(RequestContext ctx) {
        Long id = ctx.getRequiredParam(RequestContext.FILTER_ID);
        return new ModifyFilterCommand(id, ctx.getCurrentUser());
    }

}
