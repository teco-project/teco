//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Lighthouse {
    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    /// <li>“快照名称”仅为方便用户自己管理之用。</li>
    @inlinable
    public func modifySnapshotAttribute(_ input: ModifySnapshotAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySnapshotAttributeResponse > {
        self.client.execute(action: "ModifySnapshotAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改快照信息
    ///
    /// 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
    /// <li>“快照名称”仅为方便用户自己管理之用。</li>
    @inlinable
    public func modifySnapshotAttribute(_ input: ModifySnapshotAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotAttributeResponse {
        try await self.client.execute(action: "ModifySnapshotAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySnapshotAttribute请求参数结构体
    public struct ModifySnapshotAttributeRequest: TCRequestModel {
        /// 快照 ID, 可通过 DescribeSnapshots 查询。
        public let snapshotId: String
        
        /// 新的快照名称，最长为 60 个字符。
        public let snapshotName: String?
        
        public init (snapshotId: String, snapshotName: String?) {
            self.snapshotId = snapshotId
            self.snapshotName = snapshotName
        }
        
        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case snapshotName = "SnapshotName"
        }
    }
    
    /// ModifySnapshotAttribute返回参数结构体
    public struct ModifySnapshotAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}