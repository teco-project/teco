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

extension Gaap {
    /// 创建接入段加速会话
    ///
    /// 本接口（CreateFirstLinkSession）用于创建接入段加速会话，创建有可能成功，也可能失败，需要通过返回码来进行判断。
    @inlinable
    public func createFirstLinkSession(_ input: CreateFirstLinkSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFirstLinkSessionResponse > {
        self.client.execute(action: "CreateFirstLinkSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建接入段加速会话
    ///
    /// 本接口（CreateFirstLinkSession）用于创建接入段加速会话，创建有可能成功，也可能失败，需要通过返回码来进行判断。
    @inlinable
    public func createFirstLinkSession(_ input: CreateFirstLinkSessionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFirstLinkSessionResponse {
        try await self.client.execute(action: "CreateFirstLinkSession", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFirstLinkSession请求参数结构体
    public struct CreateFirstLinkSessionRequest: TCRequestModel {
        /// 模版ID
        public let templateId: String
        
        /// 终端网络信息
        public let srcAddressInfo: SrcAddressInfo
        
        /// 加速目标网络信息
        public let destAddressInfo: DestAddressInfo
        
        /// 终端设备信息
        public let deviceInfo: DeviceInfo
        
        /// 接口扩展参数，如果是电信用户，需要填充CTCC Token字段
        public let capacity: Capacity
        
        public init (templateId: String, srcAddressInfo: SrcAddressInfo, destAddressInfo: DestAddressInfo, deviceInfo: DeviceInfo, capacity: Capacity) {
            self.templateId = templateId
            self.srcAddressInfo = srcAddressInfo
            self.destAddressInfo = destAddressInfo
            self.deviceInfo = deviceInfo
            self.capacity = capacity
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case srcAddressInfo = "SrcAddressInfo"
            case destAddressInfo = "DestAddressInfo"
            case deviceInfo = "DeviceInfo"
            case capacity = "Capacity"
        }
    }
    
    /// CreateFirstLinkSession返回参数结构体
    public struct CreateFirstLinkSessionResponse: TCResponseModel {
        /// 加速成功时返回，单次加速唯一会话Id。。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionId: String?
        
        /// 剩余的加速时间，单位秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case duration = "Duration"
            case requestId = "RequestId"
        }
    }
}