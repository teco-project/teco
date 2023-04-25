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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// DeleteTemplateMember请求参数结构体
    public struct DeleteTemplateMemberRequest: TCRequestModel {
        /// 参数模板实例ID，支持IP地址、协议端口、IP地址组、协议端口组四种参数模板的实例ID。
        public let templateId: String

        /// 需要添加的参数模板成员信息，支持IP地址、协议端口、IP地址组、协议端口组四种类型，类型需要与TemplateId参数类型一致。
        public let templateMember: [MemberInfo]

        public init(templateId: String, templateMember: [MemberInfo]) {
            self.templateId = templateId
            self.templateMember = templateMember
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateMember = "TemplateMember"
        }
    }

    /// DeleteTemplateMember返回参数结构体
    public struct DeleteTemplateMemberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除模板对象成员
    ///
    /// 删除模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func deleteTemplateMember(_ input: DeleteTemplateMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateMemberResponse> {
        self.client.execute(action: "DeleteTemplateMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模板对象成员
    ///
    /// 删除模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func deleteTemplateMember(_ input: DeleteTemplateMemberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTemplateMemberResponse {
        try await self.client.execute(action: "DeleteTemplateMember", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除模板对象成员
    ///
    /// 删除模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func deleteTemplateMember(templateId: String, templateMember: [MemberInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTemplateMemberResponse> {
        self.deleteTemplateMember(.init(templateId: templateId, templateMember: templateMember), region: region, logger: logger, on: eventLoop)
    }

    /// 删除模板对象成员
    ///
    /// 删除模板对象中的IP地址、协议端口、IP地址组、协议端口组。当前仅支持北京、泰国、北美地域请求。
    @inlinable @discardableResult
    public func deleteTemplateMember(templateId: String, templateMember: [MemberInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTemplateMemberResponse {
        try await self.deleteTemplateMember(.init(templateId: templateId, templateMember: templateMember), region: region, logger: logger, on: eventLoop)
    }
}
