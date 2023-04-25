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

extension Scf {
    /// PutProvisionedConcurrencyConfig请求参数结构体
    public struct PutProvisionedConcurrencyConfigRequest: TCRequestModel {
        /// 需要设置预置并发的函数的名称
        public let functionName: String

        /// 函数的版本号，注：$LATEST版本不支持预置并发
        public let qualifier: String

        /// 预置并发数量，注：所有版本的预置并发数总和存在上限限制，当前的上限是：函数最大并发配额 - 100
        public let versionProvisionedConcurrencyNum: UInt64

        /// 函数所属命名空间，默认为default
        public let namespace: String?

        /// 定时预置任务
        public let triggerActions: [TriggerAction]?

        /// 预置类型，
        /// 静态预置：Default
        /// 动态追踪并发利用率指标预置：ConcurrencyUtilizationTracking
        /// 预置类型二选一，设置静态预置时可以设置VersionProvisionedConcurrencyNum。
        ///
        /// 动态利用率预置可以设置TrackingTarget，MinCapacity，MaxCapacity，保持向后兼容性此时VersionProvisionedConcurrencyNum设置为0.
        public let provisionedType: String?

        /// 指标追踪的并发利用率。设置范围(0,1)
        public let trackingTarget: Float?

        /// 缩容时的最小值, 最小值为1
        public let minCapacity: UInt64?

        /// 扩容时的最大值
        public let maxCapacity: UInt64?

        public init(functionName: String, qualifier: String, versionProvisionedConcurrencyNum: UInt64, namespace: String? = nil, triggerActions: [TriggerAction]? = nil, provisionedType: String? = nil, trackingTarget: Float? = nil, minCapacity: UInt64? = nil, maxCapacity: UInt64? = nil) {
            self.functionName = functionName
            self.qualifier = qualifier
            self.versionProvisionedConcurrencyNum = versionProvisionedConcurrencyNum
            self.namespace = namespace
            self.triggerActions = triggerActions
            self.provisionedType = provisionedType
            self.trackingTarget = trackingTarget
            self.minCapacity = minCapacity
            self.maxCapacity = maxCapacity
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case qualifier = "Qualifier"
            case versionProvisionedConcurrencyNum = "VersionProvisionedConcurrencyNum"
            case namespace = "Namespace"
            case triggerActions = "TriggerActions"
            case provisionedType = "ProvisionedType"
            case trackingTarget = "TrackingTarget"
            case minCapacity = "MinCapacity"
            case maxCapacity = "MaxCapacity"
        }
    }

    /// PutProvisionedConcurrencyConfig返回参数结构体
    public struct PutProvisionedConcurrencyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置预置并发
    ///
    /// 设置函数某一非$LATEST版本的预置并发。
    @inlinable @discardableResult
    public func putProvisionedConcurrencyConfig(_ input: PutProvisionedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutProvisionedConcurrencyConfigResponse> {
        self.client.execute(action: "PutProvisionedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置预置并发
    ///
    /// 设置函数某一非$LATEST版本的预置并发。
    @inlinable @discardableResult
    public func putProvisionedConcurrencyConfig(_ input: PutProvisionedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutProvisionedConcurrencyConfigResponse {
        try await self.client.execute(action: "PutProvisionedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置预置并发
    ///
    /// 设置函数某一非$LATEST版本的预置并发。
    @inlinable @discardableResult
    public func putProvisionedConcurrencyConfig(functionName: String, qualifier: String, versionProvisionedConcurrencyNum: UInt64, namespace: String? = nil, triggerActions: [TriggerAction]? = nil, provisionedType: String? = nil, trackingTarget: Float? = nil, minCapacity: UInt64? = nil, maxCapacity: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutProvisionedConcurrencyConfigResponse> {
        self.putProvisionedConcurrencyConfig(.init(functionName: functionName, qualifier: qualifier, versionProvisionedConcurrencyNum: versionProvisionedConcurrencyNum, namespace: namespace, triggerActions: triggerActions, provisionedType: provisionedType, trackingTarget: trackingTarget, minCapacity: minCapacity, maxCapacity: maxCapacity), region: region, logger: logger, on: eventLoop)
    }

    /// 设置预置并发
    ///
    /// 设置函数某一非$LATEST版本的预置并发。
    @inlinable @discardableResult
    public func putProvisionedConcurrencyConfig(functionName: String, qualifier: String, versionProvisionedConcurrencyNum: UInt64, namespace: String? = nil, triggerActions: [TriggerAction]? = nil, provisionedType: String? = nil, trackingTarget: Float? = nil, minCapacity: UInt64? = nil, maxCapacity: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutProvisionedConcurrencyConfigResponse {
        try await self.putProvisionedConcurrencyConfig(.init(functionName: functionName, qualifier: qualifier, versionProvisionedConcurrencyNum: versionProvisionedConcurrencyNum, namespace: namespace, triggerActions: triggerActions, provisionedType: provisionedType, trackingTarget: trackingTarget, minCapacity: minCapacity, maxCapacity: maxCapacity), region: region, logger: logger, on: eventLoop)
    }
}
