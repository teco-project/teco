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
    /// ModifyLifeCycleRules请求参数结构体
    public struct ModifyLifeCycleRulesRequest: TCRequestModel {
        /// 多个生命周期规则，上限为10
        public let lifeCycleRules: [LifeCycleRule]

        public init(lifeCycleRules: [LifeCycleRule]) {
            self.lifeCycleRules = lifeCycleRules
        }

        enum CodingKeys: String, CodingKey {
            case lifeCycleRules = "LifeCycleRules"
        }
    }

    /// ModifyLifeCycleRules返回参数结构体
    public struct ModifyLifeCycleRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量修改生命周期规则属性
    ///
    /// 批量修改生命周期规则属性，需要指定生命周期规则ID，支持修改生命周期规则名称、路径、转换列表和状态。
    @inlinable @discardableResult
    public func modifyLifeCycleRules(_ input: ModifyLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLifeCycleRulesResponse> {
        self.client.execute(action: "ModifyLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改生命周期规则属性
    ///
    /// 批量修改生命周期规则属性，需要指定生命周期规则ID，支持修改生命周期规则名称、路径、转换列表和状态。
    @inlinable @discardableResult
    public func modifyLifeCycleRules(_ input: ModifyLifeCycleRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLifeCycleRulesResponse {
        try await self.client.execute(action: "ModifyLifeCycleRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改生命周期规则属性
    ///
    /// 批量修改生命周期规则属性，需要指定生命周期规则ID，支持修改生命周期规则名称、路径、转换列表和状态。
    @inlinable @discardableResult
    public func modifyLifeCycleRules(lifeCycleRules: [LifeCycleRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLifeCycleRulesResponse> {
        self.modifyLifeCycleRules(ModifyLifeCycleRulesRequest(lifeCycleRules: lifeCycleRules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改生命周期规则属性
    ///
    /// 批量修改生命周期规则属性，需要指定生命周期规则ID，支持修改生命周期规则名称、路径、转换列表和状态。
    @inlinable @discardableResult
    public func modifyLifeCycleRules(lifeCycleRules: [LifeCycleRule], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLifeCycleRulesResponse {
        try await self.modifyLifeCycleRules(ModifyLifeCycleRulesRequest(lifeCycleRules: lifeCycleRules), region: region, logger: logger, on: eventLoop)
    }
}
