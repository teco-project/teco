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
    /// 查询个人版仓库信息
    @inlinable
    public func describeRepositoryPersonal(_ input: DescribeRepositoryPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRepositoryPersonalResponse > {
        self.client.execute(action: "DescribeRepositoryPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询个人版仓库信息
    @inlinable
    public func describeRepositoryPersonal(_ input: DescribeRepositoryPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryPersonalResponse {
        try await self.client.execute(action: "DescribeRepositoryPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRepositoryPersonal请求参数结构体
    public struct DescribeRepositoryPersonalRequest: TCRequestModel {
        /// 仓库名字
        public let repoName: String
        
        public init (repoName: String) {
            self.repoName = repoName
        }
        
        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
        }
    }
    
    /// DescribeRepositoryPersonal返回参数结构体
    public struct DescribeRepositoryPersonalResponse: TCResponseModel {
        /// 仓库信息
        public let data: RepositoryInfoResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
