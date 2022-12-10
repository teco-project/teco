//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cbs {
    /// 回滚快照
    ///
    /// 本接口（ApplySnapshot）用于回滚快照到原云硬盘。
    /// * 仅支持回滚到原云硬盘上。对于数据盘快照，如果您需要复制快照数据到其它云硬盘上，请使用[CreateDisks](/document/product/362/16312)接口创建新的弹性云盘，将快照数据复制到新购云盘上。 
    /// * 用于回滚的快照必须处于NORMAL状态。快照状态可以通过[DescribeSnapshots](/document/product/362/15647)接口查询，见输出参数中SnapshotState字段解释。
    /// * 如果是弹性云盘，则云盘必须处于未挂载状态，云硬盘挂载状态可以通过[DescribeDisks](/document/product/362/16315)接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云盘，则实例必须处于关机状态，实例状态可以通过[DescribeInstancesStatus](/document/product/213/15738)接口查询。
    @inlinable
    public func applySnapshot(_ input: ApplySnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ApplySnapshotResponse > {
        self.client.execute(action: "ApplySnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 回滚快照
    ///
    /// 本接口（ApplySnapshot）用于回滚快照到原云硬盘。
    /// * 仅支持回滚到原云硬盘上。对于数据盘快照，如果您需要复制快照数据到其它云硬盘上，请使用[CreateDisks](/document/product/362/16312)接口创建新的弹性云盘，将快照数据复制到新购云盘上。 
    /// * 用于回滚的快照必须处于NORMAL状态。快照状态可以通过[DescribeSnapshots](/document/product/362/15647)接口查询，见输出参数中SnapshotState字段解释。
    /// * 如果是弹性云盘，则云盘必须处于未挂载状态，云硬盘挂载状态可以通过[DescribeDisks](/document/product/362/16315)接口查询，见Attached字段解释；如果是随实例一起购买的非弹性云盘，则实例必须处于关机状态，实例状态可以通过[DescribeInstancesStatus](/document/product/213/15738)接口查询。
    @inlinable
    public func applySnapshot(_ input: ApplySnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplySnapshotResponse {
        try await self.client.execute(action: "ApplySnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ApplySnapshot请求参数结构体
    public struct ApplySnapshotRequest: TCRequestModel {
        /// 快照ID, 可通过[DescribeSnapshots](/document/product/362/15647)查询。
        public let snapshotId: String
        
        /// 快照原云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        public let diskId: String
        
        /// 回滚前是否执行自动关机
        public let autoStopInstance: Bool?
        
        /// 回滚完成后是否自动开机
        public let autoStartInstance: Bool?
        
        public init (snapshotId: String, diskId: String, autoStopInstance: Bool?, autoStartInstance: Bool?) {
            self.snapshotId = snapshotId
            self.diskId = diskId
            self.autoStopInstance = autoStopInstance
            self.autoStartInstance = autoStartInstance
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case diskId = "DiskId"
            case autoStopInstance = "AutoStopInstance"
            case autoStartInstance = "AutoStartInstance"
        }
    }
    
    /// ApplySnapshot返回参数结构体
    public struct ApplySnapshotResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
