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

extension Ckafka {
    /// ModifyInstancePre请求参数结构体
    public struct ModifyInstancePreRequest: TCRequestModel {
        /// 实例名称
        public let instanceId: String

        /// 预计磁盘，根据磁盘步长，规格向上调整。
        public let diskSize: Int64

        /// 预计带宽，根据带宽步长，规格向上调整。
        public let bandWidth: Int64

        /// 预计分区，根据带宽步长，规格向上调整。
        public let partition: Int64?

        public init(instanceId: String, diskSize: Int64, bandWidth: Int64, partition: Int64? = nil) {
            self.instanceId = instanceId
            self.diskSize = diskSize
            self.bandWidth = bandWidth
            self.partition = partition
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case diskSize = "DiskSize"
            case bandWidth = "BandWidth"
            case partition = "Partition"
        }
    }

    /// ModifyInstancePre返回参数结构体
    public struct ModifyInstancePreResponse: TCResponseModel {
        /// 变更预付费实例配置返回结构
        public let result: CreateInstancePreResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 预付费实例变配接口
    ///
    /// 预付费实例变配接口，调整磁盘，带宽
    @inlinable
    public func modifyInstancePre(_ input: ModifyInstancePreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancePreResponse> {
        self.client.execute(action: "ModifyInstancePre", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预付费实例变配接口
    ///
    /// 预付费实例变配接口，调整磁盘，带宽
    @inlinable
    public func modifyInstancePre(_ input: ModifyInstancePreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancePreResponse {
        try await self.client.execute(action: "ModifyInstancePre", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 预付费实例变配接口
    ///
    /// 预付费实例变配接口，调整磁盘，带宽
    @inlinable
    public func modifyInstancePre(instanceId: String, diskSize: Int64, bandWidth: Int64, partition: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancePreResponse> {
        self.modifyInstancePre(.init(instanceId: instanceId, diskSize: diskSize, bandWidth: bandWidth, partition: partition), region: region, logger: logger, on: eventLoop)
    }

    /// 预付费实例变配接口
    ///
    /// 预付费实例变配接口，调整磁盘，带宽
    @inlinable
    public func modifyInstancePre(instanceId: String, diskSize: Int64, bandWidth: Int64, partition: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancePreResponse {
        try await self.modifyInstancePre(.init(instanceId: instanceId, diskSize: diskSize, bandWidth: bandWidth, partition: partition), region: region, logger: logger, on: eventLoop)
    }
}
