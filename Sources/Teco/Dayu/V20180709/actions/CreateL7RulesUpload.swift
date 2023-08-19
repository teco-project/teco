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

extension Dayu {
    /// CreateL7RulesUpload请求参数结构体
    public struct CreateL7RulesUploadRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则列表
        public let rules: [L7RuleEntry]

        public init(business: String, id: String, rules: [L7RuleEntry]) {
            self.business = business
            self.id = id
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case rules = "Rules"
        }
    }

    /// CreateL7RulesUpload返回参数结构体
    public struct CreateL7RulesUploadResponse: TCResponse {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 批量上传L7转发规则
    ///
    /// 批量上传7层转发规则
    @inlinable
    public func createL7RulesUpload(_ input: CreateL7RulesUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7RulesUploadResponse> {
        self.client.execute(action: "CreateL7RulesUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量上传L7转发规则
    ///
    /// 批量上传7层转发规则
    @inlinable
    public func createL7RulesUpload(_ input: CreateL7RulesUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RulesUploadResponse {
        try await self.client.execute(action: "CreateL7RulesUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量上传L7转发规则
    ///
    /// 批量上传7层转发规则
    @inlinable
    public func createL7RulesUpload(business: String, id: String, rules: [L7RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateL7RulesUploadResponse> {
        self.createL7RulesUpload(.init(business: business, id: id, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量上传L7转发规则
    ///
    /// 批量上传7层转发规则
    @inlinable
    public func createL7RulesUpload(business: String, id: String, rules: [L7RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL7RulesUploadResponse {
        try await self.createL7RulesUpload(.init(business: business, id: id, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
