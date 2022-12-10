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
    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// * 快照必须处于NORMAL状态，快照状态可以通过[DescribeSnapshots](/document/product/362/15647)接口查询，见输出参数中SnapshotState字段解释。
    /// * 支持批量操作。如果多个快照存在无法删除的快照，则操作不执行，以特定的错误码返回。
    @inlinable
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSnapshotsResponse > {
        self.client.execute(action: "DeleteSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除快照
    ///
    /// 本接口（DeleteSnapshots）用于删除快照。
    /// * 快照必须处于NORMAL状态，快照状态可以通过[DescribeSnapshots](/document/product/362/15647)接口查询，见输出参数中SnapshotState字段解释。
    /// * 支持批量操作。如果多个快照存在无法删除的快照，则操作不执行，以特定的错误码返回。
    @inlinable
    public func deleteSnapshots(_ input: DeleteSnapshotsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotsResponse {
        try await self.client.execute(action: "DeleteSnapshots", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSnapshots请求参数结构体
    public struct DeleteSnapshotsRequest: TCRequestModel {
        /// 要删除的快照ID列表，可通过[DescribeSnapshots](/document/product/362/15647)查询。
        public let snapshotIds: [String]
        
        /// 是否强制删除快照关联的镜像
        public let deleteBindImages: Bool?
        
        public init (snapshotIds: [String], deleteBindImages: Bool?) {
            self.snapshotIds = snapshotIds
            self.deleteBindImages = deleteBindImages
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotIds = "SnapshotIds"
            case deleteBindImages = "DeleteBindImages"
        }
    }
    
    /// DeleteSnapshots返回参数结构体
    public struct DeleteSnapshotsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
