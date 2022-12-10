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

extension Tke {
    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable
    public func installLogAgent(_ input: InstallLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InstallLogAgentResponse > {
        self.client.execute(action: "InstallLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 安装日志采集组件
    ///
    /// 在TKE集群中安装CLS日志采集组件
    @inlinable
    public func installLogAgent(_ input: InstallLogAgentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InstallLogAgentResponse {
        try await self.client.execute(action: "InstallLogAgent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InstallLogAgent请求参数结构体
    public struct InstallLogAgentRequest: TCRequestModel {
        /// TKE集群ID
        public let clusterId: String
        
        /// kubelet根目录
        public let kubeletRootDir: String?
        
        public init (clusterId: String, kubeletRootDir: String?) {
            self.clusterId = clusterId
            self.kubeletRootDir = kubeletRootDir
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case kubeletRootDir = "KubeletRootDir"
        }
    }
    
    /// InstallLogAgent返回参数结构体
    public struct InstallLogAgentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}