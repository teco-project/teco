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

extension Chdfs {
    /// 查看挂载点列表
    ///
    /// 查看挂载点列表。
    @inlinable
    public func describeMountPoints(_ input: DescribeMountPointsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMountPointsResponse > {
        self.client.execute(action: "DescribeMountPoints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看挂载点列表
    ///
    /// 查看挂载点列表。
    @inlinable
    public func describeMountPoints(_ input: DescribeMountPointsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMountPointsResponse {
        try await self.client.execute(action: "DescribeMountPoints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMountPoints请求参数结构体
    public struct DescribeMountPointsRequest: TCRequestModel {
        /// 文件系统ID
        /// 备注：入参只能指定AccessGroupId、FileSystemId和OwnerUin的其中一个
        public let fileSystemId: String?
        
        /// 权限组ID
        public let accessGroupId: String?
        
        /// 资源所属者Uin
        public let ownerUin: UInt64?
        
        public init (fileSystemId: String?, accessGroupId: String?, ownerUin: UInt64?) {
            self.fileSystemId = fileSystemId
            self.accessGroupId = accessGroupId
            self.ownerUin = ownerUin
        }
        
        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case accessGroupId = "AccessGroupId"
            case ownerUin = "OwnerUin"
        }
    }
    
    /// DescribeMountPoints返回参数结构体
    public struct DescribeMountPointsResponse: TCResponseModel {
        /// 挂载点列表
        public let mountPoints: [MountPoint]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case mountPoints = "MountPoints"
            case requestId = "RequestId"
        }
    }
}