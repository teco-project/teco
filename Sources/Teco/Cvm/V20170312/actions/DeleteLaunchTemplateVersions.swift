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

extension Cvm {
    /// DeleteLaunchTemplateVersions请求参数结构体
    public struct DeleteLaunchTemplateVersionsRequest: TCRequestModel {
        /// 启动模板ID。
        public let launchTemplateId: String
        
        /// 实例启动模板版本列表。
        public let launchTemplateVersions: [Int64]
        
        public init (launchTemplateId: String, launchTemplateVersions: [Int64]) {
            self.launchTemplateId = launchTemplateId
            self.launchTemplateVersions = launchTemplateVersions
        }
        
        enum CodingKeys: String, CodingKey {
            case launchTemplateId = "LaunchTemplateId"
            case launchTemplateVersions = "LaunchTemplateVersions"
        }
    }
    
    /// DeleteLaunchTemplateVersions返回参数结构体
    public struct DeleteLaunchTemplateVersionsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除实例启动模板版本
    ///
    /// 本接口（DeleteLaunchTemplateVersions）用于删除一个或者多个实例启动模板版本。
    @inlinable
    public func deleteLaunchTemplateVersions(_ input: DeleteLaunchTemplateVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLaunchTemplateVersionsResponse > {
        self.client.execute(action: "DeleteLaunchTemplateVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除实例启动模板版本
    ///
    /// 本接口（DeleteLaunchTemplateVersions）用于删除一个或者多个实例启动模板版本。
    @inlinable
    public func deleteLaunchTemplateVersions(_ input: DeleteLaunchTemplateVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchTemplateVersionsResponse {
        try await self.client.execute(action: "DeleteLaunchTemplateVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
