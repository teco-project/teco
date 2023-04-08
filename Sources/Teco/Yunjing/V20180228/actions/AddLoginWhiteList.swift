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

import TecoCore

extension Yunjing {
    /// AddLoginWhiteList请求参数结构体
    public struct AddLoginWhiteListRequest: TCRequestModel {
        /// 白名单规则
        public let rules: LoginWhiteListsRule

        public init(rules: LoginWhiteListsRule) {
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
        }
    }

    /// AddLoginWhiteList返回参数结构体
    public struct AddLoginWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增白名单规则
    ///
    /// 本接口（AddLoginWhiteList）用于添加白名单规则
    @inlinable @discardableResult
    public func addLoginWhiteList(_ input: AddLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLoginWhiteListResponse> {
        self.client.execute(action: "AddLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增白名单规则
    ///
    /// 本接口（AddLoginWhiteList）用于添加白名单规则
    @inlinable @discardableResult
    public func addLoginWhiteList(_ input: AddLoginWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLoginWhiteListResponse {
        try await self.client.execute(action: "AddLoginWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增白名单规则
    ///
    /// 本接口（AddLoginWhiteList）用于添加白名单规则
    @inlinable @discardableResult
    public func addLoginWhiteList(rules: LoginWhiteListsRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddLoginWhiteListResponse> {
        self.addLoginWhiteList(.init(rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 新增白名单规则
    ///
    /// 本接口（AddLoginWhiteList）用于添加白名单规则
    @inlinable @discardableResult
    public func addLoginWhiteList(rules: LoginWhiteListsRule, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddLoginWhiteListResponse {
        try await self.addLoginWhiteList(.init(rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
