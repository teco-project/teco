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

extension Tcaplusdb {
    /// 上传并校验改表文件
    ///
    /// 选中目标表格，上传并校验改表文件，返回是否允许修改表格结构的结果。
    @inlinable
    public func compareIdlFiles(_ input: CompareIdlFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CompareIdlFilesResponse > {
        self.client.execute(action: "CompareIdlFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 上传并校验改表文件
    ///
    /// 选中目标表格，上传并校验改表文件，返回是否允许修改表格结构的结果。
    @inlinable
    public func compareIdlFiles(_ input: CompareIdlFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompareIdlFilesResponse {
        try await self.client.execute(action: "CompareIdlFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CompareIdlFiles请求参数结构体
    public struct CompareIdlFilesRequest: TCRequestModel {
        /// 待修改表格所在集群ID
        public let clusterId: String
        
        /// 待修改表格列表
        public let selectedTables: [SelectedTableInfoNew]
        
        /// 选中的已上传IDL文件列表，与NewIdlFiles必选其一
        public let existingIdlFiles: [IdlFileInfo]?
        
        /// 本次上传IDL文件列表，与ExistingIdlFiles必选其一
        public let newIdlFiles: [IdlFileInfo]?
        
        public init (clusterId: String, selectedTables: [SelectedTableInfoNew], existingIdlFiles: [IdlFileInfo]?, newIdlFiles: [IdlFileInfo]?) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
            self.existingIdlFiles = existingIdlFiles
            self.newIdlFiles = newIdlFiles
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
            case existingIdlFiles = "ExistingIdlFiles"
            case newIdlFiles = "NewIdlFiles"
        }
    }
    
    /// CompareIdlFiles返回参数结构体
    public struct CompareIdlFilesResponse: TCResponseModel {
        /// 本次上传校验所有的IDL文件信息列表
        public let idlFiles: [IdlFileInfo]
        
        /// 本次校验合法的表格数量
        public let totalCount: UInt64
        
        /// 读取IDL描述文件后,根据用户指示的所选中表格解析校验结果
        public let tableInfos: [ParsedTableInfoNew]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case idlFiles = "IdlFiles"
            case totalCount = "TotalCount"
            case tableInfos = "TableInfos"
            case requestId = "RequestId"
        }
    }
}
