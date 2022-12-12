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
    /// UpdateCfsSnapshotAttribute请求参数结构体
    public struct UpdateCfsSnapshotAttributeRequest: TCRequestModel {
        /// 文件系统快照ID
        public let snapshotId: String
        
        /// 文件系统快照名称
        public let snapshotName: String?
        
        /// 文件系统快照保留天数
        public let aliveDays: UInt64?
        
        public init (snapshotId: String, snapshotName: String? = nil, aliveDays: UInt64? = nil) {
            self.snapshotId = snapshotId
            self.snapshotName = snapshotName
            self.aliveDays = aliveDays
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case snapshotName = "SnapshotName"
            case aliveDays = "AliveDays"
        }
    }
    
    /// UpdateCfsSnapshotAttribute返回参数结构体
    public struct UpdateCfsSnapshotAttributeResponse: TCResponseModel {
        /// 文件系统快照ID
        public let snapshotId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case requestId = "RequestId"
        }
    }
    
    /// 更新文件系统快照信息
    ///
    /// 更新文件系统快照名称及保留时长
    @inlinable
    public func updateCfsSnapshotAttribute(_ input: UpdateCfsSnapshotAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateCfsSnapshotAttributeResponse > {
        self.client.execute(action: "UpdateCfsSnapshotAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新文件系统快照信息
    ///
    /// 更新文件系统快照名称及保留时长
    @inlinable
    public func updateCfsSnapshotAttribute(_ input: UpdateCfsSnapshotAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsSnapshotAttributeResponse {
        try await self.client.execute(action: "UpdateCfsSnapshotAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
