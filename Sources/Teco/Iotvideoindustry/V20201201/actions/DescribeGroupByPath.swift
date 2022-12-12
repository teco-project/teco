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

extension Iotvideoindustry {
    /// DescribeGroupByPath请求参数结构体
    public struct DescribeGroupByPathRequest: TCRequestModel {
        /// 分组路径，格式为/aaa(/bbb/ccc)
        public let groupPath: String
        
        public init (groupPath: String) {
            self.groupPath = groupPath
        }
        
        enum CodingKeys: String, CodingKey {
            case groupPath = "GroupPath"
        }
    }
    
    /// DescribeGroupByPath返回参数结构体
    public struct DescribeGroupByPathResponse: TCResponseModel {
        /// 分组信息详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let group: GroupItem?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case group = "Group"
            case requestId = "RequestId"
        }
    }
    
    /// 根据分组路径查询分组
    @inlinable
    public func describeGroupByPath(_ input: DescribeGroupByPathRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupByPathResponse > {
        self.client.execute(action: "DescribeGroupByPath", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据分组路径查询分组
    @inlinable
    public func describeGroupByPath(_ input: DescribeGroupByPathRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupByPathResponse {
        try await self.client.execute(action: "DescribeGroupByPath", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
