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
    /// 查看挂载点详细信息
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 查看挂载点详细信息。
    @inlinable
    public func describeMountPoint(_ input: DescribeMountPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMountPointResponse > {
        self.client.execute(action: "DescribeMountPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看挂载点详细信息
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 查看挂载点详细信息。
    @inlinable
    public func describeMountPoint(_ input: DescribeMountPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMountPointResponse {
        try await self.client.execute(action: "DescribeMountPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMountPoint请求参数结构体
    public struct DescribeMountPointRequest: TCRequestModel {
        /// 挂载点ID
        public let mountPointId: String
        
        public init (mountPointId: String) {
            self.mountPointId = mountPointId
        }
        
        enum CodingKeys: String, CodingKey {
            case mountPointId = "MountPointId"
        }
    }
    
    /// DescribeMountPoint返回参数结构体
    public struct DescribeMountPointResponse: TCResponseModel {
        /// 挂载点
        public let mountPoint: MountPoint
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case mountPoint = "MountPoint"
            case requestId = "RequestId"
        }
    }
}
