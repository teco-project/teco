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
    /// 查看快照分享信息
    ///
    /// 本接口（DescribeSnapshotSharePermission）用于查询快照的分享信息。
    @inlinable
    public func describeSnapshotSharePermission(_ input: DescribeSnapshotSharePermissionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSnapshotSharePermissionResponse > {
        self.client.execute(action: "DescribeSnapshotSharePermission", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看快照分享信息
    ///
    /// 本接口（DescribeSnapshotSharePermission）用于查询快照的分享信息。
    @inlinable
    public func describeSnapshotSharePermission(_ input: DescribeSnapshotSharePermissionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotSharePermissionResponse {
        try await self.client.execute(action: "DescribeSnapshotSharePermission", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSnapshotSharePermission请求参数结构体
    public struct DescribeSnapshotSharePermissionRequest: TCRequestModel {
        /// 要查询快照的ID。可通过[DescribeSnapshots](https://cloud.tencent.com/document/api/362/15647)查询获取。
        public let snapshotId: String
        
        public init (snapshotId: String) {
            self.snapshotId = snapshotId
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
        }
    }
    
    /// DescribeSnapshotSharePermission返回参数结构体
    public struct DescribeSnapshotSharePermissionResponse: TCResponseModel {
        /// 快照的分享信息的集合
        public let sharePermissionSet: [SharePermission]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sharePermissionSet = "SharePermissionSet"
            case requestId = "RequestId"
        }
    }
}
