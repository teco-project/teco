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

extension Monitor {
    /// 强制销毁 Grafana 实例
    ///
    /// 强制销毁 Grafana 实例
    @inlinable
    public func cleanGrafanaInstance(_ input: CleanGrafanaInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CleanGrafanaInstanceResponse > {
        self.client.execute(action: "CleanGrafanaInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 强制销毁 Grafana 实例
    ///
    /// 强制销毁 Grafana 实例
    @inlinable
    public func cleanGrafanaInstance(_ input: CleanGrafanaInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CleanGrafanaInstanceResponse {
        try await self.client.execute(action: "CleanGrafanaInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CleanGrafanaInstance请求参数结构体
    public struct CleanGrafanaInstanceRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// CleanGrafanaInstance返回参数结构体
    public struct CleanGrafanaInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}