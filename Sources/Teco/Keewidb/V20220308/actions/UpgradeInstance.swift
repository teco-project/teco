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

extension Keewidb {
    /// UpgradeInstance请求参数结构体
    public struct UpgradeInstanceRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String

        /// 配置变更后，每个分片持久化内存容量，单位：GB。
        /// <ul><li>KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        public let memSize: Int64?

        /// CPU 核数。
        public let machineCpu: Int64?

        /// 实例内存容量，单位：GB。
        /// <ul><li>KeeWiDB 内存容量<b>MachineMemory</b>与持久内存容量<b>MemSize</b>为固定搭配，即2GB内存，固定分配8GB的持久内存，不可选择。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        public let machineMemory: Int64?

        /// 配置变更后，分片数量。
        /// <ul><li>增加后分片的数量务必为增加之前数量的整数倍。分片数量支持选择3、5、6、8、9、10、12、15、16、18、20、21、24、25、27、30、32、33、35、36、39、40、42、45、48、50、51、54、55、56、57、60、63、64分片。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        public let shardNum: Int64?

        /// 配置变更后，每个分片硬盘的容量。单位：GB。
        /// <ul><li>每一缓存分片容量，对应的磁盘容量范围不同。具体信息，请参见[产品规格](https://cloud.tencent.com/document/product/1520/80808)。</li><li>变更实例内存、持久化内存与磁盘、变更实例的分片数量，每次只能变更一项。</li></ul>
        public let diskSize: Int64?

        public init(instanceId: String, memSize: Int64? = nil, machineCpu: Int64? = nil, machineMemory: Int64? = nil, shardNum: Int64? = nil, diskSize: Int64? = nil) {
            self.instanceId = instanceId
            self.memSize = memSize
            self.machineCpu = machineCpu
            self.machineMemory = machineMemory
            self.shardNum = shardNum
            self.diskSize = diskSize
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memSize = "MemSize"
            case machineCpu = "MachineCpu"
            case machineMemory = "MachineMemory"
            case shardNum = "ShardNum"
            case diskSize = "DiskSize"
        }
    }

    /// UpgradeInstance返回参数结构体
    public struct UpgradeInstanceResponse: TCResponseModel {
        /// 交易ID。
        public let dealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case requestId = "RequestId"
        }
    }

    /// 升级扩容实例
    ///
    /// 本接口（UpgradeInstance）用于对实例进行配置变更。
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeInstanceResponse> {
        self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级扩容实例
    ///
    /// 本接口（UpgradeInstance）用于对实例进行配置变更。
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        try await self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级扩容实例
    ///
    /// 本接口（UpgradeInstance）用于对实例进行配置变更。
    @inlinable
    public func upgradeInstance(instanceId: String, memSize: Int64? = nil, machineCpu: Int64? = nil, machineMemory: Int64? = nil, shardNum: Int64? = nil, diskSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeInstanceResponse> {
        self.upgradeInstance(.init(instanceId: instanceId, memSize: memSize, machineCpu: machineCpu, machineMemory: machineMemory, shardNum: shardNum, diskSize: diskSize), region: region, logger: logger, on: eventLoop)
    }

    /// 升级扩容实例
    ///
    /// 本接口（UpgradeInstance）用于对实例进行配置变更。
    @inlinable
    public func upgradeInstance(instanceId: String, memSize: Int64? = nil, machineCpu: Int64? = nil, machineMemory: Int64? = nil, shardNum: Int64? = nil, diskSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        try await self.upgradeInstance(.init(instanceId: instanceId, memSize: memSize, machineCpu: machineCpu, machineMemory: machineMemory, shardNum: shardNum, diskSize: diskSize), region: region, logger: logger, on: eventLoop)
    }
}
