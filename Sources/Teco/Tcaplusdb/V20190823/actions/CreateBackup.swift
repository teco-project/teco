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

extension Tcaplusdb {
    /// 创建备份
    ///
    /// 用户创建备份任务
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBackupResponse > {
        self.client.execute(action: "CreateBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建备份
    ///
    /// 用户创建备份任务
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        try await self.client.execute(action: "CreateBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateBackup请求参数结构体
    public struct CreateBackupRequest: TCRequestModel {
        /// 待创建备份表所属集群ID
        public let clusterId: String
        
        /// 待创建备份表信息列表
        public let selectedTables: [SelectedTableInfoNew]
        
        /// 备注信息
        public let remark: String?
        
        public init (clusterId: String, selectedTables: [SelectedTableInfoNew], remark: String?) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
            case remark = "Remark"
        }
    }
    
    /// CreateBackup返回参数结构体
    public struct CreateBackupResponse: TCResponseModel {
        /// 创建的备份任务ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskIds: [String]?
        
        /// 创建的备份申请ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationIds: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskIds = "TaskIds"
            case applicationIds = "ApplicationIds"
            case requestId = "RequestId"
        }
    }
}