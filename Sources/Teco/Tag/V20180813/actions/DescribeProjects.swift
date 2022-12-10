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

extension Tag {
    /// 获取项目列表
    ///
    /// 获取项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectsResponse > {
        self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取项目列表
    ///
    /// 获取项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCRequestModel {
        /// 传1拉取所有项目（包括隐藏项目），传0拉取显示项目
        public let allList: UInt64
        
        /// 分页条数，固定值1000。
        public let limit: UInt64
        
        /// 分页偏移量。
        public let offset: UInt64
        
        public init (allList: UInt64, limit: UInt64, offset: UInt64) {
            self.allList = allList
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case allList = "AllList"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCResponseModel {
        /// 数据总条数
        public let total: UInt64
        
        /// 项目列表
        public let projects: [Project]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case projects = "Projects"
            case requestId = "RequestId"
        }
    }
}