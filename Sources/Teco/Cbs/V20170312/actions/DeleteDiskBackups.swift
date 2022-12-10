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
    /// 删除云硬盘备份点
    ///
    /// 批量删除指定的云硬盘备份点。
    @inlinable
    public func deleteDiskBackups(_ input: DeleteDiskBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDiskBackupsResponse > {
        self.client.execute(action: "DeleteDiskBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除云硬盘备份点
    ///
    /// 批量删除指定的云硬盘备份点。
    @inlinable
    public func deleteDiskBackups(_ input: DeleteDiskBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDiskBackupsResponse {
        try await self.client.execute(action: "DeleteDiskBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteDiskBackups请求参数结构体
    public struct DeleteDiskBackupsRequest: TCRequestModel {
        /// 待删除的云硬盘备份点ID。
        public let diskBackupIds: [String]
        
        public init (diskBackupIds: [String]) {
            self.diskBackupIds = diskBackupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case diskBackupIds = "DiskBackupIds"
        }
    }
    
    /// DeleteDiskBackups返回参数结构体
    public struct DeleteDiskBackupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
