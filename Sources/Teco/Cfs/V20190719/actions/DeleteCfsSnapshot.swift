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

extension Cfs {
    /// DeleteCfsSnapshot请求参数结构体
    public struct DeleteCfsSnapshotRequest: TCRequestModel {
        /// 文件系统快照id
        public let snapshotId: String?
        
        /// 需要删除的文件文件系统快照ID 列表，快照ID，跟ID列表至少填一项
        public let snapshotIds: [String]?
        
        public init (snapshotId: String? = nil, snapshotIds: [String]? = nil) {
            self.snapshotId = snapshotId
            self.snapshotIds = snapshotIds
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case snapshotIds = "SnapshotIds"
        }
    }
    
    /// DeleteCfsSnapshot返回参数结构体
    public struct DeleteCfsSnapshotResponse: TCResponseModel {
        /// 文件系统ID
        public let snapshotId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case requestId = "RequestId"
        }
    }
    
    /// 删除文件系统快照
    @inlinable
    public func deleteCfsSnapshot(_ input: DeleteCfsSnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCfsSnapshotResponse > {
        self.client.execute(action: "DeleteCfsSnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除文件系统快照
    @inlinable
    public func deleteCfsSnapshot(_ input: DeleteCfsSnapshotRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCfsSnapshotResponse {
        try await self.client.execute(action: "DeleteCfsSnapshot", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
