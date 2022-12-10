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

extension Cfs {
    /// 查询文件系统
    ///
    /// 本接口（DescribeCfsFileSystems）用于查询文件系统
    @inlinable
    public func describeCfsFileSystems(_ input: DescribeCfsFileSystemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCfsFileSystemsResponse > {
        self.client.execute(action: "DescribeCfsFileSystems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询文件系统
    ///
    /// 本接口（DescribeCfsFileSystems）用于查询文件系统
    @inlinable
    public func describeCfsFileSystems(_ input: DescribeCfsFileSystemsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsFileSystemsResponse {
        try await self.client.execute(action: "DescribeCfsFileSystems", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCfsFileSystems请求参数结构体
    public struct DescribeCfsFileSystemsRequest: TCRequestModel {
        /// 文件系统 ID
        public let fileSystemId: String?
        
        /// 私有网络（VPC） ID
        public let vpcId: String?
        
        /// 子网 ID
        public let subnetId: String?
        
        public init (fileSystemId: String?, vpcId: String?, subnetId: String?) {
            self.fileSystemId = fileSystemId
            self.vpcId = vpcId
            self.subnetId = subnetId
        }
        
        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
        }
    }
    
    /// DescribeCfsFileSystems返回参数结构体
    public struct DescribeCfsFileSystemsResponse: TCResponseModel {
        /// 文件系统信息
        public let fileSystems: [FileSystemInfo]
        
        /// 文件系统总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileSystems = "FileSystems"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
