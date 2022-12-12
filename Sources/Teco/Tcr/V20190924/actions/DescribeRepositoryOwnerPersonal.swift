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

extension Tcr {
    /// DescribeRepositoryOwnerPersonal请求参数结构体
    public struct DescribeRepositoryOwnerPersonalRequest: TCRequestModel {
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?
        
        /// 仓库名称
        public let repoName: String?
        
        public init (offset: Int64? = nil, limit: Int64? = nil, repoName: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.repoName = repoName
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case repoName = "RepoName"
        }
    }
    
    /// DescribeRepositoryOwnerPersonal返回参数结构体
    public struct DescribeRepositoryOwnerPersonalResponse: TCResponseModel {
        /// 仓库信息
        public let data: RepoInfoResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 查询个人版所有仓库
    ///
    /// 用于在个人版中获取用户全部的镜像仓库列表
    @inlinable
    public func describeRepositoryOwnerPersonal(_ input: DescribeRepositoryOwnerPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRepositoryOwnerPersonalResponse > {
        self.client.execute(action: "DescribeRepositoryOwnerPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询个人版所有仓库
    ///
    /// 用于在个人版中获取用户全部的镜像仓库列表
    @inlinable
    public func describeRepositoryOwnerPersonal(_ input: DescribeRepositoryOwnerPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryOwnerPersonalResponse {
        try await self.client.execute(action: "DescribeRepositoryOwnerPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
