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

extension Live {
    /// 删除水印规则
    ///
    /// 删除水印规则
    @inlinable
    public func deleteLiveWatermarkRule(_ input: DeleteLiveWatermarkRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveWatermarkRuleResponse > {
        self.client.execute(action: "DeleteLiveWatermarkRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除水印规则
    ///
    /// 删除水印规则
    @inlinable
    public func deleteLiveWatermarkRule(_ input: DeleteLiveWatermarkRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveWatermarkRuleResponse {
        try await self.client.execute(action: "DeleteLiveWatermarkRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLiveWatermarkRule请求参数结构体
    public struct DeleteLiveWatermarkRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String
        
        /// 推流路径。与推流和播放地址中的 AppName 保持一致，默认为live。
        public let appName: String
        
        /// 流名称。
        public let streamName: String
        
        public init (domainName: String, appName: String, streamName: String) {
            self.domainName = domainName
            self.appName = appName
            self.streamName = streamName
        }
        
        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case appName = "AppName"
            case streamName = "StreamName"
        }
    }
    
    /// DeleteLiveWatermarkRule返回参数结构体
    public struct DeleteLiveWatermarkRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}