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

extension Ecm {
    /// RebootInstances请求参数结构体
    public struct RebootInstancesRequest: TCRequestModel {
        /// 待重启的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        public let instanceIdSet: [String]

        /// 是否在正常重启失败后选择强制重启实例。取值范围：
        /// TRUE：表示在正常重启失败后进行强制重启；
        /// FALSE：表示在正常重启失败后不进行强制重启；
        /// 默认取值：FALSE。
        public let forceReboot: Bool?

        /// 关机类型。取值范围：
        /// SOFT：表示软关机
        /// HARD：表示硬关机
        /// SOFT_FIRST：表示优先软关机，失败再执行硬关机
        ///
        /// 默认取值：SOFT。
        public let stopType: String?

        public init(instanceIdSet: [String], forceReboot: Bool? = nil, stopType: String? = nil) {
            self.instanceIdSet = instanceIdSet
            self.forceReboot = forceReboot
            self.stopType = stopType
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case forceReboot = "ForceReboot"
            case stopType = "StopType"
        }
    }

    /// RebootInstances返回参数结构体
    public struct RebootInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重启实例
    ///
    /// 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。
    @inlinable @discardableResult
    public func rebootInstances(_ input: RebootInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootInstancesResponse> {
        self.client.execute(action: "RebootInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。
    @inlinable @discardableResult
    public func rebootInstances(_ input: RebootInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootInstancesResponse {
        try await self.client.execute(action: "RebootInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启实例
    ///
    /// 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。
    @inlinable @discardableResult
    public func rebootInstances(instanceIdSet: [String], forceReboot: Bool? = nil, stopType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebootInstancesResponse> {
        self.rebootInstances(.init(instanceIdSet: instanceIdSet, forceReboot: forceReboot, stopType: stopType), region: region, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。
    @inlinable @discardableResult
    public func rebootInstances(instanceIdSet: [String], forceReboot: Bool? = nil, stopType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootInstancesResponse {
        try await self.rebootInstances(.init(instanceIdSet: instanceIdSet, forceReboot: forceReboot, stopType: stopType), region: region, logger: logger, on: eventLoop)
    }
}
