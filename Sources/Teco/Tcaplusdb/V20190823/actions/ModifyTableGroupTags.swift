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
    /// ModifyTableGroupTags请求参数结构体
    public struct ModifyTableGroupTagsRequest: TCRequestModel {
        /// 待修改标签表格组所属集群ID
        public let clusterId: String
        
        /// 待修改标签表格组ID
        public let tableGroupId: String
        
        /// 待增加或修改的标签列表
        public let replaceTags: [TagInfoUnit]?
        
        /// 待删除的标签
        public let deleteTags: [TagInfoUnit]?
        
        public init (clusterId: String, tableGroupId: String, replaceTags: [TagInfoUnit]? = nil, deleteTags: [TagInfoUnit]? = nil) {
            self.clusterId = clusterId
            self.tableGroupId = tableGroupId
            self.replaceTags = replaceTags
            self.deleteTags = deleteTags
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupId = "TableGroupId"
            case replaceTags = "ReplaceTags"
            case deleteTags = "DeleteTags"
        }
    }
    
    /// ModifyTableGroupTags返回参数结构体
    public struct ModifyTableGroupTagsResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 修改表格组标签
    @inlinable
    public func modifyTableGroupTags(_ input: ModifyTableGroupTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTableGroupTagsResponse > {
        self.client.execute(action: "ModifyTableGroupTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改表格组标签
    @inlinable
    public func modifyTableGroupTags(_ input: ModifyTableGroupTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableGroupTagsResponse {
        try await self.client.execute(action: "ModifyTableGroupTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
