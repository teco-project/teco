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

extension Vod {
    /// DeleteSuperPlayerConfig请求参数结构体
    public struct DeleteSuperPlayerConfigRequest: TCRequestModel {
        /// 播放器配置名称。
        public let name: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        public init (name: String, subAppId: UInt64? = nil) {
            self.name = name
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subAppId = "SubAppId"
        }
    }
    
    /// DeleteSuperPlayerConfig返回参数结构体
    public struct DeleteSuperPlayerConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 删除播放器配置。  
    /// *注：系统预置播放器配置不允许删除。*
    @inlinable
    public func deleteSuperPlayerConfig(_ input: DeleteSuperPlayerConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSuperPlayerConfigResponse > {
        self.client.execute(action: "DeleteSuperPlayerConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 删除播放器配置。  
    /// *注：系统预置播放器配置不允许删除。*
    @inlinable
    public func deleteSuperPlayerConfig(_ input: DeleteSuperPlayerConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSuperPlayerConfigResponse {
        try await self.client.execute(action: "DeleteSuperPlayerConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
