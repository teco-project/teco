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

extension Tiia {
    /// CreateGroup请求参数结构体
    public struct CreateGroupRequest: TCRequestModel {
        /// 图库ID，不可重复，仅支持字母、数字和下划线。
        public let groupId: String
        
        /// 图库名称描述。
        public let groupName: String
        
        /// 图库可容纳的最大图片数量。
        public let maxCapacity: UInt64
        
        /// 图库简介。
        public let brief: String?
        
        /// 访问限制默认为10qps，如需扩容请联系[在线客服](https://cloud.tencent.com/online-service)申请。
        public let maxQps: UInt64?
        
        /// 图库类型，对应不同的图像搜索服务类型，默认为4。1～3为历史版本，不推荐。
        /// 参数取值：
        /// 4：相同图像搜索。
        /// 5：商品图像搜索。
        /// 6：相似图像搜索。
        public let groupType: UInt64?
        
        public init (groupId: String, groupName: String, maxCapacity: UInt64, brief: String? = nil, maxQps: UInt64? = nil, groupType: UInt64? = nil) {
            self.groupId = groupId
            self.groupName = groupName
            self.maxCapacity = maxCapacity
            self.brief = brief
            self.maxQps = maxQps
            self.groupType = groupType
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case maxCapacity = "MaxCapacity"
            case brief = "Brief"
            case maxQps = "MaxQps"
            case groupType = "GroupType"
        }
    }
    
    /// CreateGroup返回参数结构体
    public struct CreateGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建图片库
    ///
    /// 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。
    /// | 服务类型 | GroupType入参 |功能描述 |
    /// |  :----------  | :----- |:-----------------  |
    /// | 相同图像搜索<div style="width: 70pt"> | 4 |在自建图片库中搜索相同原图或高相似图，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。|
    /// | 商品图像搜索<div style="width: 70pt"> | 5 |在自建图库中搜索同款商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。|
    /// | 相似图像搜索<div style="width: 70pt"> | 6 |在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。|
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGroupResponse > {
        self.client.execute(action: "CreateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建图片库
    ///
    /// 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。
    /// | 服务类型 | GroupType入参 |功能描述 |
    /// |  :----------  | :----- |:-----------------  |
    /// | 相同图像搜索<div style="width: 70pt"> | 4 |在自建图片库中搜索相同原图或高相似图，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。|
    /// | 商品图像搜索<div style="width: 70pt"> | 5 |在自建图库中搜索同款商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。|
    /// | 相似图像搜索<div style="width: 70pt"> | 6 |在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。|
    @inlinable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.client.execute(action: "CreateGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
