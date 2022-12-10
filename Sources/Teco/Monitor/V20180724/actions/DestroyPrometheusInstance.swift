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
    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable
    public func destroyPrometheusInstance(_ input: DestroyPrometheusInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroyPrometheusInstanceResponse > {
        self.client.execute(action: "DestroyPrometheusInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable
    public func destroyPrometheusInstance(_ input: DestroyPrometheusInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPrometheusInstanceResponse {
        try await self.client.execute(action: "DestroyPrometheusInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DestroyPrometheusInstance请求参数结构体
    public struct DestroyPrometheusInstanceRequest: TCRequestModel {
        /// 实例 ID，该实例必须先被 terminate
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DestroyPrometheusInstance返回参数结构体
    public struct DestroyPrometheusInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}