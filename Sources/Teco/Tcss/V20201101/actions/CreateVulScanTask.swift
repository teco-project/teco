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

extension Tcss {
    /// 创建漏洞扫描任务
    @inlinable
    public func createVulScanTask(_ input: CreateVulScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVulScanTaskResponse > {
        self.client.execute(action: "CreateVulScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建漏洞扫描任务
    @inlinable
    public func createVulScanTask(_ input: CreateVulScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulScanTaskResponse {
        try await self.client.execute(action: "CreateVulScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateVulScanTask请求参数结构体
    public struct CreateVulScanTaskRequest: TCRequestModel {
        /// 本地镜像扫描范围类型。ALL:全部本地镜像，NOT_SCAN：全部已授权未扫描本地镜像，IMAGEIDS:自选本地镜像ID
        public let localImageScanType: String?
        
        /// 根据已授权的本地镜像IDs扫描，优先权高于根据满足条件的已授权的本地镜像。
        public let localImageIDs: [String]?
        
        /// 仓库镜像扫描范围类型。ALL:全部仓库镜像，NOT_SCAN：全部已授权未扫描仓库镜像，IMAGEIDS:自选仓库镜像ID
        public let registryImageScanType: String?
        
        /// 根据已授权的仓库镜像IDs扫描，优先权高于根据满足条件的已授权的仓库镜像。
        public let registryImageIDs: [UInt64]?
        
        /// 本地镜像重新漏洞扫描时的任务ID
        public let localTaskID: Int64?
        
        /// 仓库镜像重新漏洞扫描时的任务ID
        public let registryTaskID: Int64?
        
        public init (localImageScanType: String?, localImageIDs: [String]?, registryImageScanType: String?, registryImageIDs: [UInt64]?, localTaskID: Int64?, registryTaskID: Int64?) {
            self.localImageScanType = localImageScanType
            self.localImageIDs = localImageIDs
            self.registryImageScanType = registryImageScanType
            self.registryImageIDs = registryImageIDs
            self.localTaskID = localTaskID
            self.registryTaskID = registryTaskID
        }
        
        enum CodingKeys: String, CodingKey {
            case localImageScanType = "LocalImageScanType"
            case localImageIDs = "LocalImageIDs"
            case registryImageScanType = "RegistryImageScanType"
            case registryImageIDs = "RegistryImageIDs"
            case localTaskID = "LocalTaskID"
            case registryTaskID = "RegistryTaskID"
        }
    }
    
    /// CreateVulScanTask返回参数结构体
    public struct CreateVulScanTaskResponse: TCResponseModel {
        /// 本地镜像重新漏洞扫描时的任务ID
        public let localTaskID: Int64
        
        /// 仓库镜像重新漏洞扫描时的任务ID
        public let registryTaskID: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case localTaskID = "LocalTaskID"
            case registryTaskID = "RegistryTaskID"
            case requestId = "RequestId"
        }
    }
}
