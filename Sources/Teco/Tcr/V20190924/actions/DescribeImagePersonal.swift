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
    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(_ input: DescribeImagePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImagePersonalResponse > {
        self.client.execute(action: "DescribeImagePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(_ input: DescribeImagePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagePersonalResponse {
        try await self.client.execute(action: "DescribeImagePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImagePersonal请求参数结构体
    public struct DescribeImagePersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String
        
        /// 偏移量，默认为0
        public let offset: Int64?
        
        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?
        
        /// tag名称，可根据输入搜索
        public let tag: String?
        
        public init (repoName: String, offset: Int64?, limit: Int64?, tag: String?) {
            self.repoName = repoName
            self.offset = offset
            self.limit = limit
            self.tag = tag
        }
        
        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case offset = "Offset"
            case limit = "Limit"
            case tag = "Tag"
        }
    }
    
    /// DescribeImagePersonal返回参数结构体
    public struct DescribeImagePersonalResponse: TCResponseModel {
        /// 镜像tag信息
        public let data: TagInfoResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
