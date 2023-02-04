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

extension Chdfs {
    /// DeleteLifeCycleRules请求参数结构体
    public struct DeleteLifeCycleRulesRequest: TCRequestModel {
        /// 多个生命周期规则ID，上限为10
        public let lifeCycleRuleIds: [UInt64]

        public init(lifeCycleRuleIds: [UInt64]) {
            self.lifeCycleRuleIds = lifeCycleRuleIds
        }

        enum CodingKeys: String, CodingKey {
            case lifeCycleRuleIds = "LifeCycleRuleIds"
        }
    }

    /// DeleteLifeCycleRules返回参数结构体
    public struct DeleteLifeCycleRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除生命周期规则
    ///
    /// 批量删除生命周期规则。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteLifeCycleRules(_ input: DeleteLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifeCycleRulesResponse> {
        self.client.execute(action: "DeleteLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除生命周期规则
    ///
    /// 批量删除生命周期规则。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteLifeCycleRules(_ input: DeleteLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifeCycleRulesResponse {
        try await self.client.execute(action: "DeleteLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除生命周期规则
    ///
    /// 批量删除生命周期规则。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteLifeCycleRules(lifeCycleRuleIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifeCycleRulesResponse> {
        let input = DeleteLifeCycleRulesRequest(lifeCycleRuleIds: lifeCycleRuleIds)
        return self.client.execute(action: "DeleteLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除生命周期规则
    ///
    /// 批量删除生命周期规则。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func deleteLifeCycleRules(lifeCycleRuleIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLifeCycleRulesResponse {
        let input = DeleteLifeCycleRulesRequest(lifeCycleRuleIds: lifeCycleRuleIds)
        return try await self.client.execute(action: "DeleteLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
