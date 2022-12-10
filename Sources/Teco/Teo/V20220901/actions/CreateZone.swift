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

extension Teo {
    /// 创建站点
    ///
    /// 用于用户接入新的站点。
    @inlinable
    public func createZone(_ input: CreateZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateZoneResponse > {
        self.client.execute(action: "CreateZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建站点
    ///
    /// 用于用户接入新的站点。
    @inlinable
    public func createZone(_ input: CreateZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateZoneResponse {
        try await self.client.execute(action: "CreateZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateZone请求参数结构体
    public struct CreateZoneRequest: TCRequestModel {
        /// 站点名称。
        public let zoneName: String
        
        /// 接入方式，取值有：
        /// <li> full：NS接入；</li>
        /// <li> partial：CNAME接入，请先调用认证站点API（IdentifyZone）进行站点归属权校验，校验通过后继续调用本接口创建站点。</li>不填写使用默认值full。
        public let type: String?
        
        /// 是否跳过站点现有的DNS记录扫描。默认值：false。
        public let jumpStart: Bool?
        
        /// 资源标签。
        public let tags: [Tag]?
        
        /// 是否允许重复接入。
        /// <li> true：允许重复接入；</li>
        /// <li> false：不允许重复接入。</li>不填写使用默认值false。
        public let allowDuplicates: Bool?
        
        /// 站点别名。数字、英文、-和_组合，限制20个字符。
        public let aliasZoneName: String?
        
        public init (zoneName: String, type: String?, jumpStart: Bool?, tags: [Tag]?, allowDuplicates: Bool?, aliasZoneName: String?) {
            self.zoneName = zoneName
            self.type = type
            self.jumpStart = jumpStart
            self.tags = tags
            self.allowDuplicates = allowDuplicates
            self.aliasZoneName = aliasZoneName
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneName = "ZoneName"
            case type = "Type"
            case jumpStart = "JumpStart"
            case tags = "Tags"
            case allowDuplicates = "AllowDuplicates"
            case aliasZoneName = "AliasZoneName"
        }
    }
    
    /// CreateZone返回参数结构体
    public struct CreateZoneResponse: TCResponseModel {
        /// 站点ID。
        public let zoneId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case requestId = "RequestId"
        }
    }
}