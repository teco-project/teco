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

extension Solar {
    /// 子项目详情
    @inlinable
    public func describeSubProject(_ input: DescribeSubProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubProjectResponse > {
        self.client.execute(action: "DescribeSubProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 子项目详情
    @inlinable
    public func describeSubProject(_ input: DescribeSubProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubProjectResponse {
        try await self.client.execute(action: "DescribeSubProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSubProject请求参数结构体
    public struct DescribeSubProjectRequest: TCRequestModel {
        /// 子项目id
        public let subProjectId: String
        
        public init (subProjectId: String) {
            self.subProjectId = subProjectId
        }
        
        enum CodingKeys: String, CodingKey {
            case subProjectId = "SubProjectId"
        }
    }
    
    /// DescribeSubProject返回参数结构体
    public struct DescribeSubProjectResponse: TCResponseModel {
        /// 作品信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productInfo: ProductInfo
        
        /// 活动信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityInfo: ActivityInfo
        
        /// 分享标题
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shareTitle: String?
        
        /// 分享描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shareDesc: String?
        
        /// 分享图标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shareImg: String?
        
        /// 是否已创建策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hasStrategy: UInt64?
        
        /// 子项目状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subProjectStatus: String?
        
        /// 分享公众号的appId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shareAppId: String?
        
        /// 分享公众号的wsId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let shareWsId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case productInfo = "ProductInfo"
            case activityInfo = "ActivityInfo"
            case shareTitle = "ShareTitle"
            case shareDesc = "ShareDesc"
            case shareImg = "ShareImg"
            case hasStrategy = "HasStrategy"
            case subProjectStatus = "SubProjectStatus"
            case shareAppId = "ShareAppId"
            case shareWsId = "ShareWsId"
            case requestId = "RequestId"
        }
    }
}
