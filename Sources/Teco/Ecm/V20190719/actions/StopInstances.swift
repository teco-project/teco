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

extension Ecm {
    /// StopInstances请求参数结构体
    public struct StopInstancesRequest: TCRequestModel {
        /// 需要关机的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        public let instanceIdSet: [String]

        /// 是否在正常关闭失败后选择强制关闭实例，默认为false，即否。
        public let forceStop: Bool?

        /// 实例的关闭模式。取值范围：
        /// SOFT_FIRST：表示在正常关闭失败后进行强制关闭;
        /// HARD：直接强制关闭;
        /// SOFT：仅软关机；
        /// 默认为SOFT。
        public let stopType: String?

        public init(instanceIdSet: [String], forceStop: Bool? = nil, stopType: String? = nil) {
            self.instanceIdSet = instanceIdSet
            self.forceStop = forceStop
            self.stopType = stopType
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case forceStop = "ForceStop"
            case stopType = "StopType"
        }
    }

    /// StopInstances返回参数结构体
    public struct StopInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 实例关机
    ///
    /// 只有处于"RUNNING"状态的实例才能够进行关机操作；
    /// 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
    /// 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    @inlinable @discardableResult
    public func stopInstances(_ input: StopInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopInstancesResponse> {
        self.client.execute(action: "StopInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例关机
    ///
    /// 只有处于"RUNNING"状态的实例才能够进行关机操作；
    /// 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
    /// 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    @inlinable @discardableResult
    public func stopInstances(_ input: StopInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInstancesResponse {
        try await self.client.execute(action: "StopInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例关机
    ///
    /// 只有处于"RUNNING"状态的实例才能够进行关机操作；
    /// 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
    /// 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    @inlinable @discardableResult
    public func stopInstances(instanceIdSet: [String], forceStop: Bool? = nil, stopType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopInstancesResponse> {
        self.stopInstances(StopInstancesRequest(instanceIdSet: instanceIdSet, forceStop: forceStop, stopType: stopType), region: region, logger: logger, on: eventLoop)
    }

    /// 实例关机
    ///
    /// 只有处于"RUNNING"状态的实例才能够进行关机操作；
    /// 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
    /// 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    @inlinable @discardableResult
    public func stopInstances(instanceIdSet: [String], forceStop: Bool? = nil, stopType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInstancesResponse {
        try await self.stopInstances(StopInstancesRequest(instanceIdSet: instanceIdSet, forceStop: forceStop, stopType: stopType), region: region, logger: logger, on: eventLoop)
    }
}
