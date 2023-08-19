//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// ModifyTemplateMember请求参数结构体
    public struct ModifyTemplateMemberRequest: TCRequest {
        /// 参数模板实例ID，支持IP地址、协议端口、IP地址组、协议端口组四种参数模板的实例ID。
        public let templateId: String

        /// 需要修改的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致，修改顺序与TemplateMember参数顺序一一对应，入参长度需要与TemplateMember参数保持一致。
        public let originalTemplateMember: [MemberInfo]

        /// 新的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致，修改顺序与OriginalTemplateMember参数顺序一一对应，入参长度需要与OriginalTemplateMember参数保持一致。
        public let templateMember: [MemberInfo]

        public init(templateId: String, originalTemplateMember: [MemberInfo], templateMember: [MemberInfo]) {
            self.templateId = templateId
            self.originalTemplateMember = originalTemplateMember
            self.templateMember = templateMember
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case originalTemplateMember = "OriginalTemplateMember"
            case templateMember = "TemplateMember"
        }
    }

    /// ModifyTemplateMember返回参数结构体
    public struct ModifyTemplateMemberResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模板对象成员
    ///
    /// 修改模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func modifyTemplateMember(_ input: ModifyTemplateMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTemplateMemberResponse> {
        self.client.execute(action: "ModifyTemplateMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模板对象成员
    ///
    /// 修改模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func modifyTemplateMember(_ input: ModifyTemplateMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTemplateMemberResponse {
        try await self.client.execute(action: "ModifyTemplateMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模板对象成员
    ///
    /// 修改模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func modifyTemplateMember(templateId: String, originalTemplateMember: [MemberInfo], templateMember: [MemberInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTemplateMemberResponse> {
        self.modifyTemplateMember(.init(templateId: templateId, originalTemplateMember: originalTemplateMember, templateMember: templateMember), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模板对象成员
    ///
    /// 修改模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func modifyTemplateMember(templateId: String, originalTemplateMember: [MemberInfo], templateMember: [MemberInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTemplateMemberResponse {
        try await self.modifyTemplateMember(.init(templateId: templateId, originalTemplateMember: originalTemplateMember, templateMember: templateMember), region: region, logger: logger, on: eventLoop)
    }
}
