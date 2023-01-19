//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// DeleteL4Rules请求参数结构体
    public struct DeleteL4RulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 规则ID列表
        public let ruleIdList: [String]

        public init(business: String, id: String, ruleIdList: [String]) {
            self.business = business
            self.id = id
            self.ruleIdList = ruleIdList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleIdList = "RuleIdList"
        }
    }

    /// DeleteL4Rules返回参数结构体
    public struct DeleteL4RulesResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 删除L4转发规则
    ///
    /// 删除四层转发规则
    @inlinable
    public func deleteL4Rules(_ input: DeleteL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteL4RulesResponse> {
        self.client.execute(action: "DeleteL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除L4转发规则
    ///
    /// 删除四层转发规则
    @inlinable
    public func deleteL4Rules(_ input: DeleteL4RulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteL4RulesResponse {
        try await self.client.execute(action: "DeleteL4Rules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除L4转发规则
    ///
    /// 删除四层转发规则
    @inlinable
    public func deleteL4Rules(business: String, id: String, ruleIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteL4RulesResponse> {
        self.deleteL4Rules(DeleteL4RulesRequest(business: business, id: id, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除L4转发规则
    ///
    /// 删除四层转发规则
    @inlinable
    public func deleteL4Rules(business: String, id: String, ruleIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteL4RulesResponse {
        try await self.deleteL4Rules(DeleteL4RulesRequest(business: business, id: id, ruleIdList: ruleIdList), region: region, logger: logger, on: eventLoop)
    }
}
