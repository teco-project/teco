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

extension Pts {
    /// DescribeFiles请求参数结构体
    public struct DescribeFilesRequest: TCRequestModel {
        /// 项目 ID 数组
        public let projectIds: [String]
        
        /// 文件 ID 数组
        public let fileIds: [String]?
        
        /// 文件名
        public let fileName: String?
        
        /// 偏移量，默认为 0
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大为 100
        public let limit: Int64?
        
        /// 文件种类，参数文件-1，协议文件-2，请求文件-3
        public let kind: Int64?
        
        public init (projectIds: [String], fileIds: [String]? = nil, fileName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, kind: Int64? = nil) {
            self.projectIds = projectIds
            self.fileIds = fileIds
            self.fileName = fileName
            self.offset = offset
            self.limit = limit
            self.kind = kind
        }
        
        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case fileIds = "FileIds"
            case fileName = "FileName"
            case offset = "Offset"
            case limit = "Limit"
            case kind = "Kind"
        }
    }
    
    /// DescribeFiles返回参数结构体
    public struct DescribeFilesResponse: TCResponseModel {
        /// 文件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileSet: [File]?
        
        /// 文件总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileSet = "FileSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 查询文件列表
    @inlinable
    public func describeFiles(_ input: DescribeFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFilesResponse > {
        self.client.execute(action: "DescribeFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询文件列表
    @inlinable
    public func describeFiles(_ input: DescribeFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFilesResponse {
        try await self.client.execute(action: "DescribeFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
