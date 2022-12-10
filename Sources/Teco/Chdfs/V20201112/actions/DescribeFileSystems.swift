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

extension Chdfs {
    /// 查看文件系统列表
    ///
    /// 查看文件系统列表。
    @inlinable
    public func describeFileSystems(_ input: DescribeFileSystemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFileSystemsResponse > {
        self.client.execute(action: "DescribeFileSystems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看文件系统列表
    ///
    /// 查看文件系统列表。
    @inlinable
    public func describeFileSystems(_ input: DescribeFileSystemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileSystemsResponse {
        try await self.client.execute(action: "DescribeFileSystems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeFileSystems请求参数结构体
    public struct DescribeFileSystemsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeFileSystems返回参数结构体
    public struct DescribeFileSystemsResponse: TCResponseModel {
        /// 文件系统列表
        public let fileSystems: [FileSystem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileSystems = "FileSystems"
            case requestId = "RequestId"
        }
    }
}
