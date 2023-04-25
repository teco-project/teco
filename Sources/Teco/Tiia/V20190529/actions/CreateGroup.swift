//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tiia {
    /// CreateGroup请求参数结构体
    public struct CreateGroupRequest: TCRequestModel {
        /// 图库ID，不可重复，仅支持字母、数字和下划线。
        public let groupId: String

        /// 图库名称描述。
        public let groupName: String

        /// 图片库可容纳的最大图片特征条数，一张图片对应一条图片特征数据，不支持修改。
        /// 单个图片库容量最大可达亿级，达到容量限制后继续创建图片将会报错。
        /// 注意，包月计费下支持绑定的最小库容量为500万。
        public let maxCapacity: UInt64

        /// 图库简介。
        public let brief: String?

        /// 访问限制默认为10qps，如需扩容请联系[在线客服](https://cloud.tencent.com/online-service)申请。
        public let maxQps: UInt64?

        /// 图库类型，用于决定图像搜索的服务类型和算法版本，默认为4。
        /// GroupType不支持修改，若不确定适用的服务类型，建议先对不同类型分别小规模测试后再开始正式使用。
        /// 参数取值：
        /// 4：通用图像搜索1.0版。
        /// 7：商品图像搜索2.0升级版。
        /// 5：商品图像搜索1.0版。
        /// 6：图案花纹搜索1.0版。
        /// 1 - 3：通用图像搜索旧版，不推荐使用。
        public let groupType: UInt64?

        public init(groupId: String, groupName: String, maxCapacity: UInt64, brief: String? = nil, maxQps: UInt64? = nil, groupType: UInt64? = nil) {
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
    ///
    /// <table>
    ///     <th>服务类型</th><th>GroupType</th><th>功能描述</th>
    ///     <tr>
    ///         <td>通用图像搜索</td>
    ///         <td>4</td>
    ///         <td>通用图像搜索1.0版。<br>在自建图片库中搜索相同原图或相似图片集，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。</td>
    ///     </tr>
    ///     <tr>
    ///         <td rowspan="2">商品图像搜索</td>
    ///         <td>7</td><td>商品图像搜索2.0升级版。<br>
    ///         在自建图库中搜索同款或相似商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。</td>
    ///     </tr>
    ///      <tr>
    ///         <td>5</td>
    ///         <td>商品图像搜索1.0版。<br>
    ///         功能和2.0升级版类似。</td>
    ///     </tr>
    ///     <tr>
    ///     <td>图案花纹搜索</td><td>6</td><td>图案花纹搜索1.0版。<br>
    ///     在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。</td>
    ///     </tr>
    /// </table>
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建图片库
    ///
    /// 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。
    ///
    /// <table>
    ///     <th>服务类型</th><th>GroupType</th><th>功能描述</th>
    ///     <tr>
    ///         <td>通用图像搜索</td>
    ///         <td>4</td>
    ///         <td>通用图像搜索1.0版。<br>在自建图片库中搜索相同原图或相似图片集，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。</td>
    ///     </tr>
    ///     <tr>
    ///         <td rowspan="2">商品图像搜索</td>
    ///         <td>7</td><td>商品图像搜索2.0升级版。<br>
    ///         在自建图库中搜索同款或相似商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。</td>
    ///     </tr>
    ///      <tr>
    ///         <td>5</td>
    ///         <td>商品图像搜索1.0版。<br>
    ///         功能和2.0升级版类似。</td>
    ///     </tr>
    ///     <tr>
    ///     <td>图案花纹搜索</td><td>6</td><td>图案花纹搜索1.0版。<br>
    ///     在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。</td>
    ///     </tr>
    /// </table>
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func createGroup(_ input: CreateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.client.execute(action: "CreateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建图片库
    ///
    /// 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。
    ///
    /// <table>
    ///     <th>服务类型</th><th>GroupType</th><th>功能描述</th>
    ///     <tr>
    ///         <td>通用图像搜索</td>
    ///         <td>4</td>
    ///         <td>通用图像搜索1.0版。<br>在自建图片库中搜索相同原图或相似图片集，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。</td>
    ///     </tr>
    ///     <tr>
    ///         <td rowspan="2">商品图像搜索</td>
    ///         <td>7</td><td>商品图像搜索2.0升级版。<br>
    ///         在自建图库中搜索同款或相似商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。</td>
    ///     </tr>
    ///      <tr>
    ///         <td>5</td>
    ///         <td>商品图像搜索1.0版。<br>
    ///         功能和2.0升级版类似。</td>
    ///     </tr>
    ///     <tr>
    ///     <td>图案花纹搜索</td><td>6</td><td>图案花纹搜索1.0版。<br>
    ///     在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。</td>
    ///     </tr>
    /// </table>
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func createGroup(groupId: String, groupName: String, maxCapacity: UInt64, brief: String? = nil, maxQps: UInt64? = nil, groupType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResponse> {
        self.createGroup(.init(groupId: groupId, groupName: groupName, maxCapacity: maxCapacity, brief: brief, maxQps: maxQps, groupType: groupType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建图片库
    ///
    /// 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。
    ///
    /// <table>
    ///     <th>服务类型</th><th>GroupType</th><th>功能描述</th>
    ///     <tr>
    ///         <td>通用图像搜索</td>
    ///         <td>4</td>
    ///         <td>通用图像搜索1.0版。<br>在自建图片库中搜索相同原图或相似图片集，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。</td>
    ///     </tr>
    ///     <tr>
    ///         <td rowspan="2">商品图像搜索</td>
    ///         <td>7</td><td>商品图像搜索2.0升级版。<br>
    ///         在自建图库中搜索同款或相似商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。</td>
    ///     </tr>
    ///      <tr>
    ///         <td>5</td>
    ///         <td>商品图像搜索1.0版。<br>
    ///         功能和2.0升级版类似。</td>
    ///     </tr>
    ///     <tr>
    ///     <td>图案花纹搜索</td><td>6</td><td>图案花纹搜索1.0版。<br>
    ///     在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。</td>
    ///     </tr>
    /// </table>
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func createGroup(groupId: String, groupName: String, maxCapacity: UInt64, brief: String? = nil, maxQps: UInt64? = nil, groupType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        try await self.createGroup(.init(groupId: groupId, groupName: groupName, maxCapacity: maxCapacity, brief: brief, maxQps: maxQps, groupType: groupType), region: region, logger: logger, on: eventLoop)
    }
}
