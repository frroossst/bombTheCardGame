const std = @import("std");

const Suit = enum {
    Spades,
    Hearts,
    Diamonds,
    Clubs,
};

const Rank = enum {
    Ace,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    Ten,
    Jack,
    Queen,
    King,
};

const Card = struct {
    suit: Suit,
    rank: Rank,
};

const CardFetcher = struct {
    // 56 strings
    // hashmap of strings to links
    // array of key = Card type and values are links
    links: std.ArrayHashMap([]const u8, []const u8),

    pub fn init() CardFetcher {
        const link = "https://raw.githubusercontent.com/frroossst/bombTheCardGame/refs/heads/master/assets/";
        const extension = ".png";

        var map = std.StringArrayHashMap([]const u8).init(std.heap.page_allocator);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Ace }, link ++ "cards_spades_A" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Two }, link ++ "cards_spades_02" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Three }, link ++ "cards_spades_03" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Four }, link ++ "cards_spades_04" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Five }, link ++ "cards_spades_05" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Six }, link ++ "cards_spades_06" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Seven }, link ++ "cards_spades_07" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Eight }, link ++ "cards_spades_08" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Nine }, link ++ "cards_spades_09" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Ten }, link ++ "cards_spades_10" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Jack }, link ++ "cards_spades_J" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.Queen }, link ++ "cards_spades_Q" ++ extension);
        map.put(Card{ .suit = Suit.Spades, .rank = Rank.King }, link ++ "cards_spades_K" ++ extension);
        map.put(Card{ .suit = Suit.Hearts, .rank = Rank.Ace }, link ++ "cards_hearts_A" ++ extension);

        return CardFetcher{
            .links = map,
        };
    }

    pub fn get(self: *CardFetcher, card: Card) []const u8 {
        return self.links.get(card);
    }
};
