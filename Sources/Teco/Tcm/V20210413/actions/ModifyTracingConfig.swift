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

extension Tcm {
    /// ModifyTracingConfig请求参数结构体
    public struct ModifyTracingConfigRequest: TCRequestModel {
        /// mesh名字
        public let meshId: String
        
        /// 是否启用调用跟踪
        public let enable: Bool?
        
        /// 腾讯云 APM 服务相关参数
        public let apm: APM?
        
        /// 调用跟踪采样值
        public let sampling: Float?
        
        /// 调用追踪Zipkin相关配置
        public let zipkin: TracingZipkin?
        
        public init (meshId: String, enable: Bool? = nil, apm: APM? = nil, sampling: Float? = nil, zipkin: TracingZipkin? = nil) {
            self.meshId = meshId
            self.enable = enable
            self.apm = apm
            self.sampling = sampling
            self.zipkin = zipkin
        }
        
        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
            case enable = "Enable"
            case apm = "APM"
            case sampling = "Sampling"
            case zipkin = "Zipkin"
        }
    }
    
    /// ModifyTracingConfig返回参数结构体
    public struct ModifyTracingConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改 Tracing 配置
    @inlinable
    public func modifyTracingConfig(_ input: ModifyTracingConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTracingConfigResponse > {
        self.client.execute(action: "ModifyTracingConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改 Tracing 配置
    @inlinable
    public func modifyTracingConfig(_ input: ModifyTracingConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTracingConfigResponse {
        try await self.client.execute(action: "ModifyTracingConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
